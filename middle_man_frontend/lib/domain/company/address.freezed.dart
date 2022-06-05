// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddressItem {
  UniqueId get id => throw _privateConstructorUsedError;
  RegionList get region => throw _privateConstructorUsedError;
  City get city => throw _privateConstructorUsedError;
  PhoneNumber get phoneNumber => throw _privateConstructorUsedError;
  StreetName get streetName => throw _privateConstructorUsedError;
  BranchName get branchName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddressItemCopyWith<AddressItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressItemCopyWith<$Res> {
  factory $AddressItemCopyWith(
          AddressItem value, $Res Function(AddressItem) then) =
      _$AddressItemCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      RegionList region,
      City city,
      PhoneNumber phoneNumber,
      StreetName streetName,
      BranchName branchName});
}

/// @nodoc
class _$AddressItemCopyWithImpl<$Res> implements $AddressItemCopyWith<$Res> {
  _$AddressItemCopyWithImpl(this._value, this._then);

  final AddressItem _value;
  // ignore: unused_field
  final $Res Function(AddressItem) _then;

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
              as UniqueId,
      region: region == freezed
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as RegionList,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      streetName: streetName == freezed
          ? _value.streetName
          : streetName // ignore: cast_nullable_to_non_nullable
              as StreetName,
      branchName: branchName == freezed
          ? _value.branchName
          : branchName // ignore: cast_nullable_to_non_nullable
              as BranchName,
    ));
  }
}

/// @nodoc
abstract class _$$_AddressItemCopyWith<$Res>
    implements $AddressItemCopyWith<$Res> {
  factory _$$_AddressItemCopyWith(
          _$_AddressItem value, $Res Function(_$_AddressItem) then) =
      __$$_AddressItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      RegionList region,
      City city,
      PhoneNumber phoneNumber,
      StreetName streetName,
      BranchName branchName});
}

/// @nodoc
class __$$_AddressItemCopyWithImpl<$Res> extends _$AddressItemCopyWithImpl<$Res>
    implements _$$_AddressItemCopyWith<$Res> {
  __$$_AddressItemCopyWithImpl(
      _$_AddressItem _value, $Res Function(_$_AddressItem) _then)
      : super(_value, (v) => _then(v as _$_AddressItem));

  @override
  _$_AddressItem get _value => super._value as _$_AddressItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? region = freezed,
    Object? city = freezed,
    Object? phoneNumber = freezed,
    Object? streetName = freezed,
    Object? branchName = freezed,
  }) {
    return _then(_$_AddressItem(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      region: region == freezed
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as RegionList,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      streetName: streetName == freezed
          ? _value.streetName
          : streetName // ignore: cast_nullable_to_non_nullable
              as StreetName,
      branchName: branchName == freezed
          ? _value.branchName
          : branchName // ignore: cast_nullable_to_non_nullable
              as BranchName,
    ));
  }
}

/// @nodoc

class _$_AddressItem extends _AddressItem {
  const _$_AddressItem(
      {required this.id,
      required this.region,
      required this.city,
      required this.phoneNumber,
      required this.streetName,
      required this.branchName})
      : super._();

  @override
  final UniqueId id;
  @override
  final RegionList region;
  @override
  final City city;
  @override
  final PhoneNumber phoneNumber;
  @override
  final StreetName streetName;
  @override
  final BranchName branchName;

  @override
  String toString() {
    return 'AddressItem(id: $id, region: $region, city: $city, phoneNumber: $phoneNumber, streetName: $streetName, branchName: $branchName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressItem &&
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
  _$$_AddressItemCopyWith<_$_AddressItem> get copyWith =>
      __$$_AddressItemCopyWithImpl<_$_AddressItem>(this, _$identity);
}

abstract class _AddressItem extends AddressItem {
  const factory _AddressItem(
      {required final UniqueId id,
      required final RegionList region,
      required final City city,
      required final PhoneNumber phoneNumber,
      required final StreetName streetName,
      required final BranchName branchName}) = _$_AddressItem;
  const _AddressItem._() : super._();

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  RegionList get region => throw _privateConstructorUsedError;
  @override
  City get city => throw _privateConstructorUsedError;
  @override
  PhoneNumber get phoneNumber => throw _privateConstructorUsedError;
  @override
  StreetName get streetName => throw _privateConstructorUsedError;
  @override
  BranchName get branchName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AddressItemCopyWith<_$_AddressItem> get copyWith =>
      throw _privateConstructorUsedError;
}
