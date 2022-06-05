import 'package:dartz/dartz.dart';

import '../core/failures.dart';
import '../core/value_objects.dart';
import '../core/value_validators.dart';

class ItemName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maximumLength = 50;

  factory ItemName(String input) {
    return ItemName._(
      validateMaxStringLength(input, maximumLength).flatMap(validateStringNotEmpty),
    );
  }

  const ItemName._(this.value);
}

class ItemType extends ValueObject<String> {

  static const List<String> types = [
      "CONSTRUCTION",
      "ELECTRONICS",
      "HOUSING",
       "OTHER"
  ];

  @override
  final Either<ValueFailure<String>, String> value;

  factory ItemType(String input) {
    return ItemType._(
      validateItemType(input,types)
    );
  }

  const ItemType._(this.value);
}

class ItemQuantity extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ItemQuantity(String input) {
    return ItemQuantity._(
      validateItemQuantityAndPrice(input)
    );
  }

  const ItemQuantity._(this.value);
}

class ItemPrice extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ItemPrice(String input) {
    return ItemPrice._(
      validateItemQuantityAndPrice(input)
    );
  }

  const ItemPrice._(this.value);
}