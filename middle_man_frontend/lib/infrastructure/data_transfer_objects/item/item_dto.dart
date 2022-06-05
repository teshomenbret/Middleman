import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import '../../../domain/core/value_objects.dart';
import '../../../domain/item/item.dart';
import '../../../domain/item/value_objects.dart';
import '../company/company_dto.dart';

part 'item_dto.g.dart';
part 'item_dto.freezed.dart';

@freezed
abstract class ItemDto with _$ItemDto {
  const ItemDto._();
  
  factory ItemDto({
    required  String id,
    required String name,
    required String type,
    required String quantity,
    required String price,
    required String  companyId, 
  }) = _ItemDto;

  factory ItemDto.fromDomain(Item item) {
    return ItemDto(
      id: item.id.getOrCrash(),
      name: item.name.getOrCrash(),
      type: item.type.getOrCrash(),
      quantity: item.quantity.getOrCrash(),
      price : item.price.getOrCrash(), 
      companyId: item.companyId.getOrCrash(), 
     
    );
  }


  factory ItemDto.fromJson(Map<String, dynamic> json) =>_$ItemDtoFromJson(json);
  // Map<String, dynamic> toJson() =>_$ItemDtoToJson(this);

  Item toDomain(){
    return Item(
      id: UniqueId.fromUniqueString(id),
      name:ItemName(name), 
      quantity:ItemQuantity(quantity), 
      type: ItemType(type),
      price: ItemPrice(price), 
      companyId: UniqueId.fromUniqueString(id), 
     
      );
  }


}
