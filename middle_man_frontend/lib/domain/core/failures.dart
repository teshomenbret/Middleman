import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {

// for the all app
  const factory ValueFailure.exceedingLength({
    required T failedValue,
    required int maximum,
  }) = ExceedingLength<T>;
  const factory ValueFailure.empty({
    required T failedValue,
  }) = Empty<T>;

// for the item
   const factory ValueFailure.invalidItemType({
    required T failedValue,
  }) = InvalidItemType<T>;
  const factory ValueFailure.invalidItemQuantityAndPrice({
    required T failedValue,
  }) = InvalidItemQuantity<T>;

// for the authontication
  const factory ValueFailure.invalidEmail({
    required T failedValue,
  }) = InvalidEmail<T>;

    const factory ValueFailure.invalidUser({
    required T failedValue,
  }) = InvalidUser<T>;

  const factory ValueFailure.shortPassword({
    required T failedValue,
  }) = ShortPassword<T>;

// for Region Address
   const factory ValueFailure.invalidRegionType({
    @required T? failedValue,
  }) = InvalidRegionType<T>;

  const factory ValueFailure.invalidRole({
    required T failedValue,
  }) = InvalidRole<T>;
 
}

