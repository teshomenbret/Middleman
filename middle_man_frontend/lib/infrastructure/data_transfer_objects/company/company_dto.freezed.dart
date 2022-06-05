// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'company_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CompanyDto _$CompanyDtoFromJson(Map<String, dynamic> json) {
  return _CompanyDto.fromJson(json);
}

/// @nodoc
mixin _$CompanyDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get logo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyDtoCopyWith<CompanyDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyDtoCopyWith<$Res> {
  factory $CompanyDtoCopyWith(
          CompanyDto value, $Res Function(CompanyDto) then) =
      _$CompanyDtoCopyWithImpl<$Res>;
  $Res call({String id, String name, String description, String logo});
}

/// @nodoc
class _$CompanyDtoCopyWithImpl<$Res> implements $CompanyDtoCopyWith<$Res> {
  _$CompanyDtoCopyWithImpl(this._value, this._then);

  final CompanyDto _value;
  // ignore: unused_field
  final $Res Function(CompanyDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? logo = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      logo: logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_CompanyDtoCopyWith<$Res>
    implements $CompanyDtoCopyWith<$Res> {
  factory _$$_CompanyDtoCopyWith(
          _$_CompanyDto value, $Res Function(_$_CompanyDto) then) =
      __$$_CompanyDtoCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, String description, String logo});
}

/// @nodoc
class __$$_CompanyDtoCopyWithImpl<$Res> extends _$CompanyDtoCopyWithImpl<$Res>
    implements _$$_CompanyDtoCopyWith<$Res> {
  __$$_CompanyDtoCopyWithImpl(
      _$_CompanyDto _value, $Res Function(_$_CompanyDto) _then)
      : super(_value, (v) => _then(v as _$_CompanyDto));

  @override
  _$_CompanyDto get _value => super._value as _$_CompanyDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? logo = freezed,
  }) {
    return _then(_$_CompanyDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      logo: logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CompanyDto extends _CompanyDto {
  _$_CompanyDto(
      {required this.id,
      required this.name,
      required this.description,
      required this.logo})
      : super._();

  factory _$_CompanyDto.fromJson(Map<String, dynamic> json) =>
      _$$_CompanyDtoFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String logo;

  @override
  String toString() {
    return 'CompanyDto(id: $id, name: $name, description: $description, logo: $logo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CompanyDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.logo, logo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(logo));

  @JsonKey(ignore: true)
  @override
  _$$_CompanyDtoCopyWith<_$_CompanyDto> get copyWith =>
      __$$_CompanyDtoCopyWithImpl<_$_CompanyDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CompanyDtoToJson(this);
  }
}

abstract class _CompanyDto extends CompanyDto {
  factory _CompanyDto(
      {required final String id,
      required final String name,
      required final String description,
      required final String logo}) = _$_CompanyDto;
  _CompanyDto._() : super._();

  factory _CompanyDto.fromJson(Map<String, dynamic> json) =
      _$_CompanyDto.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  String get logo => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CompanyDtoCopyWith<_$_CompanyDto> get copyWith =>
      throw _privateConstructorUsedError;
}

AddressItemDto _$AddressItemDtoFromJson(Map<String, dynamic> json) {
  return _AddressItemDto.fromJson(json);
}

/// @nodoc
mixin _$AddressItemDto {
  String get id => throw _privateConstructorUsedError;
  String get region => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get streetName => throw _privateConstructorUsedError;
  String get branchName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressItemDtoCopyWith<AddressItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressItemDtoCopyWith<$Res> {
  factory $AddressItemDtoCopyWith(
          AddressItemDto value, $Res Function(AddressItemDto) then) =
      _$AddressItemDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String region,
      String city,
      String phoneNumber,
      String streetName,
      String branchName});
}

/// @nodoc
class _$AddressItemDtoCopyWithImpl<$Res>
    implements $AddressItemDtoCopyWith<$Res> {
  _$AddressItemDtoCopyWithImpl(this._value, this._then);

  final AddressItemDto _value;
  // ignore: unused_field
  final $Res Function(AddressItemDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? region = freezed,
    Object? city = freezed,
    Object? phoneNumber = freezed,
    Object? streetName = freezed,
    Object? branchName = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      region: region == freezed
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      streetName: streetName == freezed
          ? _value.streetName
          : streetName // ignore: cast_nullable_to_non_nullable
              as String,
      branchName: branchName == freezed
          ? _value.branchName
          : branchName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AddressItemDtoCopyWith<$Res>
    implements $AddressItemDtoCopyWith<$Res> {
  factory _$$_AddressItemDtoCopyWith(
          _$_AddressItemDto value, $Res Function(_$_AddressItemDto) then) =
      __$$_AddressItemDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String region,
      String city,
      String phoneNumber,
      String streetName,
      String branchName});
}

/// @nodoc
class __$$_AddressItemDtoCopyWithImpl<$Res>
    extends _$AddressItemDtoCopyWithImpl<$Res>
    implements _$$_AddressItemDtoCopyWith<$Res> {
  __$$_AddressItemDtoCopyWithImpl(
      _$_AddressItemDto _value, $Res Function(_$_AddressItemDto) _then)
      : super(_value, (v) => _then(v as _$_AddressItemDto));

  @override
  _$_AddressItemDto get _value => super._value as _$_AddressItemDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? region = freezed,
    Object? city = freezed,
    Object? phoneNumber = freezed,
    Object? streetName = freezed,
    Object? branchName = freezed,
  }) {
    return _then(_$_AddressItemDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      region: region == freezed
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      streetName: streetName == freezed
          ? _value.streetName
          : streetName // ignore: cast_nullable_to_non_nullable
              as String,
      branchName: branchName == freezed
          ? _value.branchName
          : branchName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddressItemDto implements _AddressItemDto {
  const _$_AddressItemDto(
      {required this.id,
      required this.region,
      required this.city,
      required this.phoneNumber,
      required this.streetName,
      required this.branchName});

  factory _$_AddressItemDto.fromJson(Map<String, dynamic> json) =>
      _$$_AddressItemDtoFromJson(json);

  @override
  final String id;
  @override
  final String region;
  @override
  final String city;
  @override
  final String phoneNumber;
  @override
  final String streetName;
  @override
  final String branchName;

  @override
  String toString() {
    return 'AddressItemDto(id: $id, region: $region, city: $city, phoneNumber: $phoneNumber, streetName: $streetName, branchName: $branchName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressItemDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.region, region) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality()
                .equals(other.streetName, streetName) &&
            const DeepCollectionEquality()
                .equals(other.branchName, branchName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(region),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(streetName),
      const DeepCollectionEquality().hash(branchName));

  @JsonKey(ignore: true)
  @override
  _$$_AddressItemDtoCopyWith<_$_AddressItemDto> get copyWith =>
      __$$_AddressItemDtoCopyWithImpl<_$_AddressItemDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddressItemDtoToJson(this);
  }
  
  @override
  AddressItem toDomain() {
    // TODO: implement toDomain
    throw UnimplementedError();
  }
}

abstract class _AddressItemDto implements AddressItemDto {
  const factory _AddressItemDto(
      {required final String id,
      required final String region,
      required final String city,
      required final String phoneNumber,
      required final String streetName,
      required final String branchName}) = _$_AddressItemDto;

  factory _AddressItemDto.fromJson(Map<String, dynamic> json) =
      _$_AddressItemDto.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get region => throw _privateConstructorUsedError;
  @override
  String get city => throw _privateConstructorUsedError;
  @override
  String get phoneNumber => throw _privateConstructorUsedError;
  @override
  String get streetName => throw _privateConstructorUsedError;
  @override
  String get branchName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AddressItemDtoCopyWith<_$_AddressItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}
