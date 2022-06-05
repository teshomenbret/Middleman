import 'dart:convert';

 

import 'package:dartz/dartz.dart';

import '../../../domain/item/i_item_repository.dart';
import '../../../domain/item/item.dart';
import '../../../domain/item/item_failure.dart';
import '../../data_provider/item/item_remote_data_provider.dart';
import '../../data_transfer_objects/item/item_dto.dart';

class ItemRepository implements IItemRepository{
  final ItemRemoteDataProvider itemDataProvider;
  ItemRepository(this.itemDataProvider);

   @override
  Future<Either<ItemFailure, List<Item>>> read() async {
    try{
      String apiResponse =await itemDataProvider.fetchAll();
      final List<dynamic> responseJson = jsonDecode(apiResponse);
      final allItemList= responseJson.map(
        (e) => ItemDto.fromJson(e).toDomain()).toList();
      return right(allItemList);
    }on Exception catch (e){
      return left(const ItemFailure.unexpected());
    } 
  }

  @override
  Future<Either<ItemFailure, Item>> create(Item item) async {
    try{
      final itemDto = ItemDto.fromDomain(item);
      String body = await itemDataProvider.create(itemDto.toJson());
      Map<String, dynamic> dotoJoson = jsonDecode(body);
      ItemDto itemDtoNew = ItemDto.fromJson(dotoJoson);
      Item itemCreated = itemDtoNew.toDomain();  
      return right(itemCreated);

    }on Exception catch (e){
      return left(const ItemFailure.unexpected());
    } 
  }

  @override
  Future<Either<ItemFailure, Item>> update(Item item) async {
     try{
      final itemDto = ItemDto.fromDomain(item);
      String body = await itemDataProvider.update(itemDto.toJson());
      Map<String, dynamic> dotoJoson = jsonDecode(body);
      ItemDto itemDtoNew = ItemDto.fromJson(dotoJoson);
      Item itemUpdated = itemDtoNew.toDomain(); 

      return right(itemUpdated);
    }on Exception catch (e){
      return left(const ItemFailure.unableToUpdate());
    }
  }

  @override
  Future<Either<ItemFailure, Unit>> delete(Item item) async {
     try{
      await itemDataProvider.delete(item.id.getOrCrash());
      return right(unit);
    }on Exception catch (e){
      return left(const ItemFailure.unexpected());
    }
  }

 

  
}