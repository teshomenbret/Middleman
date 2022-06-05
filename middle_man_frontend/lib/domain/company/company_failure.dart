import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_failure.freezed.dart';

@freezed
abstract class CompanyFailure with _$CompanyFailure {
  const factory CompanyFailure.unexpected() = Unexpected;
  const factory CompanyFailure.insufficientPermissions() = InsufficientPermissions;
  const factory CompanyFailure.unableToUpdate() = UnableToUpdate;
}