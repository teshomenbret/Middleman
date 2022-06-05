// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemDto _$$_ItemDtoFromJson(Map<String, dynamic> json) => _$_ItemDto(
      id: json['id'] as String,
      name: json['name'] as String,
      type: json['type'] as String,
      quantity: json['quantity'] as String,
      price: json['price'] as String,
      companyId: json['companyId'] as String,
    );

Map<String, dynamic> _$$_ItemDtoToJson(_$_ItemDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'quantity': instance.quantity,
      'price': instance.price,
      'companyId': instance.companyId,
    };
