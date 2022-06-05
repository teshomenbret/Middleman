import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:middle_man_frontend/domain/company/value_objects.dart';

import '../core/failures.dart';
import '../core/value_objects.dart';

part 'address.freezed.dart';

@freezed
abstract class AddressItem implements _$AddressItem {
  const AddressItem._();

  const factory AddressItem({
    required UniqueId id,
    required RegionList region,
    required City city,
    required PhoneNumber phoneNumber,
    required StreetName streetName,
    required BranchName branchName,
  }) = _AddressItem;

  factory AddressItem.empty() => AddressItem(
        id: UniqueId(),
        region: RegionList(RegionList.possibleRegions[0]),
        city: City(''),
        phoneNumber: PhoneNumber(''),
        streetName: StreetName(''),
        branchName: BranchName('')
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return region.failureOrUnit
            .andThen(city.failureOrUnit)
            .andThen(phoneNumber.failureOrUnit)
            .andThen(streetName.failureOrUnit)
            .andThen(branchName.failureOrUnit)
            .fold((f) => some(f), (_) => none());
  }
}