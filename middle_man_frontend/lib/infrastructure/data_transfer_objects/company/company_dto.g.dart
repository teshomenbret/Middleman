// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CompanyDto _$$_CompanyDtoFromJson(Map<String, dynamic> json) =>
    _$_CompanyDto(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      logo: json['logo'] as String,
    );

Map<String, dynamic> _$$_CompanyDtoToJson(_$_CompanyDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'logo': instance.logo,
    };

_$_AddressItemDto _$$_AddressItemDtoFromJson(Map<String, dynamic> json) =>
    _$_AddressItemDto(
      id: json['id'] as String,
      region: json['region'] as String,
      city: json['city'] as String,
      phoneNumber: json['phoneNumber'] as String,
      streetName: json['streetName'] as String,
      branchName: json['branchName'] as String,
    );

Map<String, dynamic> _$$_AddressItemDtoToJson(_$_AddressItemDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'region': instance.region,
      'city': instance.city,
      'phoneNumber': instance.phoneNumber,
      'streetName': instance.streetName,
      'branchName': instance.branchName,
    };
