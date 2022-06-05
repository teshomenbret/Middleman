import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import '../../../domain/company/address.dart';
import '../../../domain/company/company.dart';
import '../../../domain/company/value_objects.dart';
import '../../../domain/core/value_objects.dart';


part 'company_dto.g.dart';
part 'company_dto.freezed.dart';

@freezed
abstract class CompanyDto with _$CompanyDto {
  const CompanyDto._();
  
  factory CompanyDto({
    required  String id,
    required String name,
    required String description,
    required String logo,
  }) = _CompanyDto;

  factory CompanyDto.fromDomain(Company company) {
    return CompanyDto(
      id: company.id.getOrCrash(),
      name: company.name.getOrCrash(),
      description: company.description.getOrCrash(),   
      logo: company.logo.getOrCrash(),
    );
  }


  factory CompanyDto.fromJson(Map<String, dynamic> json) =>_$CompanyDtoFromJson(json);

  Company toDomain(){
    return Company(
      id: UniqueId.fromUniqueString(id),
      name:CompanyName(name), 
      description:Description(description),  
      logo: Logo(logo), 
      );
  }

}



@freezed
abstract class AddressItemDto with _$AddressItemDto {
  const factory AddressItemDto({
    required String id,
    required String region,
    required String city,
    required String phoneNumber,
    required String streetName,
    required String branchName,
    
  }) = _AddressItemDto;

  factory AddressItemDto.fromDomain(AddressItem addressItem) {
    return AddressItemDto(
      id: addressItem.id.getOrCrash(),
      region: addressItem.region.getOrCrash(),
      city: addressItem.city.getOrCrash(),
      phoneNumber: addressItem.phoneNumber.getOrCrash(),
      streetName: addressItem.streetName.getOrCrash(),
      branchName: addressItem.branchName.getOrCrash()
    );
  }

  factory AddressItemDto.fromJson(Map<String, dynamic> json) => _$AddressItemDtoFromJson(json);

  AddressItem toDomain() {
    return AddressItem(
      id: UniqueId.fromUniqueString(id),
      region: RegionList(region),
      city: City(city),
      phoneNumber: PhoneNumber(phoneNumber),
      streetName: StreetName(streetName),
      branchName: BranchName(branchName)
    );
}
}