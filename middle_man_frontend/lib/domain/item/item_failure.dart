import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_failure.freezed.dart';

@freezed
abstract class ItemFailure with _$ItemFailure {
  const factory ItemFailure.unexpected() = Unexpected;
  const factory ItemFailure.insufficientPermissions() = InsufficientPermissions;
  const factory ItemFailure.unableToUpdate() = UnableToUpdate;
}