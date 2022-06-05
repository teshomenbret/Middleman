import 'package:dartz/dartz.dart';
import 'package:middle_man_frontend/domain/item/item.dart';

import 'item_failure.dart';

abstract class IItemRepository {
  Future<Either<ItemFailure, List<Item>>> read();
  Future<Either<ItemFailure, Item>> create(Item item);
  Future<Either<ItemFailure, Item>> update(Item item);
  Future<Either<ItemFailure, Unit>> delete(Item item);
}