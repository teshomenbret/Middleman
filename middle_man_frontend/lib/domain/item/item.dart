import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:middle_man_frontend/domain/item/value_objects.dart';
import '../company/company.dart';
import '../company/value_objects.dart';
import '../core/failures.dart';
import '../core/value_objects.dart';
part 'item.freezed.dart';

@freezed
abstract class Item implements _$Item{
  const Item._();

  const factory Item({
    required UniqueId id,
    required ItemName name,
    required ItemType type,
    required ItemQuantity quantity,
    required ItemPrice price,
    required UniqueId companyId
  }) = _Item;

// for future use
  factory Item.empty() => Item(
        id: UniqueId(),
        name: ItemName(''),
        type: ItemType(ItemType.types[0]),
        quantity: ItemQuantity("0"),
        price: ItemPrice("0"), 
        companyId: UniqueId()
      );

// middle_man_frontend validate when a new filed is added
  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit
        .andThen(type.failureOrUnit)
        .andThen(quantity.failureOrUnit)
        .andThen(price.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
