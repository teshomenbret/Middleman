// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ValueFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maximum) exceedingLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidItemType,
    required TResult Function(T failedValue) invalidItemQuantityAndPrice,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidUser,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T? failedValue) invalidRegionType,
    required TResult Function(T failedValue) invalidRole,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int maximum)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidItemType,
    TResult Function(T failedValue)? invalidItemQuantityAndPrice,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidUser,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T? failedValue)? invalidRegionType,
    TResult Function(T failedValue)? invalidRole,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maximum)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidItemType,
    TResult Function(T failedValue)? invalidItemQuantityAndPrice,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidUser,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T? failedValue)? invalidRegionType,
    TResult Function(T failedValue)? invalidRole,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidItemType<T> value) invalidItemType,
    required TResult Function(InvalidItemQuantity<T> value)
        invalidItemQuantityAndPrice,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidUser<T> value) invalidUser,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(InvalidRegionType<T> value) invalidRegionType,
    required TResult Function(InvalidRole<T> value) invalidRole,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidItemType<T> value)? invalidItemType,
    TResult Function(InvalidItemQuantity<T> value)? invalidItemQuantityAndPrice,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidUser<T> value)? invalidUser,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidRegionType<T> value)? invalidRegionType,
    TResult Function(InvalidRole<T> value)? invalidRole,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidItemType<T> value)? invalidItemType,
    TResult Function(InvalidItemQuantity<T> value)? invalidItemQuantityAndPrice,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidUser<T> value)? invalidUser,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidRegionType<T> value)? invalidRegionType,
    TResult Function(InvalidRole<T> value)? invalidRole,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;
}

/// @nodoc
abstract class _$$ExceedingLengthCopyWith<T, $Res> {
  factory _$$ExceedingLengthCopyWith(_$ExceedingLength<T> value,
          $Res Function(_$ExceedingLength<T>) then) =
      __$$ExceedingLengthCopyWithImpl<T, $Res>;
  $Res call({T failedValue, int maximum});
}

/// @nodoc
class __$$ExceedingLengthCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$ExceedingLengthCopyWith<T, $Res> {
  __$$ExceedingLengthCopyWithImpl(
      _$ExceedingLength<T> _value, $Res Function(_$ExceedingLength<T>) _then)
      : super(_value, (v) => _then(v as _$ExceedingLength<T>));

  @override
  _$ExceedingLength<T> get _value => super._value as _$ExceedingLength<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? maximum = freezed,
  }) {
    return _then(_$ExceedingLength<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      maximum: maximum == freezed
          ? _value.maximum
          : maximum // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ExceedingLength<T> implements ExceedingLength<T> {
  const _$ExceedingLength({required this.failedValue, required this.maximum});

  @override
  final T failedValue;
  @override
  final int maximum;

  @override
  String toString() {
    return 'ValueFailure<$T>.exceedingLength(failedValue: $failedValue, maximum: $maximum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExceedingLength<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            const DeepCollectionEquality().equals(other.maximum, maximum));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failedValue),
      const DeepCollectionEquality().hash(maximum));

  @JsonKey(ignore: true)
  @override
  _$$ExceedingLengthCopyWith<T, _$ExceedingLength<T>> get copyWith =>
      __$$ExceedingLengthCopyWithImpl<T, _$ExceedingLength<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maximum) exceedingLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidItemType,
    required TResult Function(T failedValue) invalidItemQuantityAndPrice,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidUser,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T? failedValue) invalidRegionType,
    required TResult Function(T failedValue) invalidRole,
  }) {
    return exceedingLength(failedValue, maximum);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int maximum)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidItemType,
    TResult Function(T failedValue)? invalidItemQuantityAndPrice,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidUser,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T? failedValue)? invalidRegionType,
    TResult Function(T failedValue)? invalidRole,
  }) {
    return exceedingLength?.call(failedValue, maximum);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maximum)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidItemType,
    TResult Function(T failedValue)? invalidItemQuantityAndPrice,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidUser,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T? failedValue)? invalidRegionType,
    TResult Function(T failedValue)? invalidRole,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(failedValue, maximum);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidItemType<T> value) invalidItemType,
    required TResult Function(InvalidItemQuantity<T> value)
        invalidItemQuantityAndPrice,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidUser<T> value) invalidUser,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(InvalidRegionType<T> value) invalidRegionType,
    required TResult Function(InvalidRole<T> value) invalidRole,
  }) {
    return exceedingLength(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidItemType<T> value)? invalidItemType,
    TResult Function(InvalidItemQuantity<T> value)? invalidItemQuantityAndPrice,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidUser<T> value)? invalidUser,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidRegionType<T> value)? invalidRegionType,
    TResult Function(InvalidRole<T> value)? invalidRole,
  }) {
    return exceedingLength?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidItemType<T> value)? invalidItemType,
    TResult Function(InvalidItemQuantity<T> value)? invalidItemQuantityAndPrice,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidUser<T> value)? invalidUser,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidRegionType<T> value)? invalidRegionType,
    TResult Function(InvalidRole<T> value)? invalidRole,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(this);
    }
    return orElse();
  }
}

abstract class ExceedingLength<T> implements ValueFailure<T> {
  const factory ExceedingLength(
      {required final T failedValue,
      required final int maximum}) = _$ExceedingLength<T>;

  T get failedValue => throw _privateConstructorUsedError;
  int get maximum => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ExceedingLengthCopyWith<T, _$ExceedingLength<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyCopyWith<T, $Res> {
  factory _$$EmptyCopyWith(_$Empty<T> value, $Res Function(_$Empty<T>) then) =
      __$$EmptyCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class __$$EmptyCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$EmptyCopyWith<T, $Res> {
  __$$EmptyCopyWithImpl(_$Empty<T> _value, $Res Function(_$Empty<T>) _then)
      : super(_value, (v) => _then(v as _$Empty<T>));

  @override
  _$Empty<T> get _value => super._value as _$Empty<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$Empty<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$Empty<T> implements Empty<T> {
  const _$Empty({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.empty(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Empty<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$EmptyCopyWith<T, _$Empty<T>> get copyWith =>
      __$$EmptyCopyWithImpl<T, _$Empty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maximum) exceedingLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidItemType,
    required TResult Function(T failedValue) invalidItemQuantityAndPrice,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidUser,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T? failedValue) invalidRegionType,
    required TResult Function(T failedValue) invalidRole,
  }) {
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int maximum)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidItemType,
    TResult Function(T failedValue)? invalidItemQuantityAndPrice,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidUser,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T? failedValue)? invalidRegionType,
    TResult Function(T failedValue)? invalidRole,
  }) {
    return empty?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maximum)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidItemType,
    TResult Function(T failedValue)? invalidItemQuantityAndPrice,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidUser,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T? failedValue)? invalidRegionType,
    TResult Function(T failedValue)? invalidRole,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidItemType<T> value) invalidItemType,
    required TResult Function(InvalidItemQuantity<T> value)
        invalidItemQuantityAndPrice,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidUser<T> value) invalidUser,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(InvalidRegionType<T> value) invalidRegionType,
    required TResult Function(InvalidRole<T> value) invalidRole,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidItemType<T> value)? invalidItemType,
    TResult Function(InvalidItemQuantity<T> value)? invalidItemQuantityAndPrice,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidUser<T> value)? invalidUser,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidRegionType<T> value)? invalidRegionType,
    TResult Function(InvalidRole<T> value)? invalidRole,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidItemType<T> value)? invalidItemType,
    TResult Function(InvalidItemQuantity<T> value)? invalidItemQuantityAndPrice,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidUser<T> value)? invalidUser,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidRegionType<T> value)? invalidRegionType,
    TResult Function(InvalidRole<T> value)? invalidRole,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T> implements ValueFailure<T> {
  const factory Empty({required final T failedValue}) = _$Empty<T>;

  T get failedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$EmptyCopyWith<T, _$Empty<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidItemTypeCopyWith<T, $Res> {
  factory _$$InvalidItemTypeCopyWith(_$InvalidItemType<T> value,
          $Res Function(_$InvalidItemType<T>) then) =
      __$$InvalidItemTypeCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class __$$InvalidItemTypeCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$InvalidItemTypeCopyWith<T, $Res> {
  __$$InvalidItemTypeCopyWithImpl(
      _$InvalidItemType<T> _value, $Res Function(_$InvalidItemType<T>) _then)
      : super(_value, (v) => _then(v as _$InvalidItemType<T>));

  @override
  _$InvalidItemType<T> get _value => super._value as _$InvalidItemType<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InvalidItemType<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidItemType<T> implements InvalidItemType<T> {
  const _$InvalidItemType({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidItemType(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidItemType<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$InvalidItemTypeCopyWith<T, _$InvalidItemType<T>> get copyWith =>
      __$$InvalidItemTypeCopyWithImpl<T, _$InvalidItemType<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maximum) exceedingLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidItemType,
    required TResult Function(T failedValue) invalidItemQuantityAndPrice,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidUser,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T? failedValue) invalidRegionType,
    required TResult Function(T failedValue) invalidRole,
  }) {
    return invalidItemType(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int maximum)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidItemType,
    TResult Function(T failedValue)? invalidItemQuantityAndPrice,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidUser,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T? failedValue)? invalidRegionType,
    TResult Function(T failedValue)? invalidRole,
  }) {
    return invalidItemType?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maximum)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidItemType,
    TResult Function(T failedValue)? invalidItemQuantityAndPrice,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidUser,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T? failedValue)? invalidRegionType,
    TResult Function(T failedValue)? invalidRole,
    required TResult orElse(),
  }) {
    if (invalidItemType != null) {
      return invalidItemType(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidItemType<T> value) invalidItemType,
    required TResult Function(InvalidItemQuantity<T> value)
        invalidItemQuantityAndPrice,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidUser<T> value) invalidUser,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(InvalidRegionType<T> value) invalidRegionType,
    required TResult Function(InvalidRole<T> value) invalidRole,
  }) {
    return invalidItemType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidItemType<T> value)? invalidItemType,
    TResult Function(InvalidItemQuantity<T> value)? invalidItemQuantityAndPrice,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidUser<T> value)? invalidUser,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidRegionType<T> value)? invalidRegionType,
    TResult Function(InvalidRole<T> value)? invalidRole,
  }) {
    return invalidItemType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidItemType<T> value)? invalidItemType,
    TResult Function(InvalidItemQuantity<T> value)? invalidItemQuantityAndPrice,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidUser<T> value)? invalidUser,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidRegionType<T> value)? invalidRegionType,
    TResult Function(InvalidRole<T> value)? invalidRole,
    required TResult orElse(),
  }) {
    if (invalidItemType != null) {
      return invalidItemType(this);
    }
    return orElse();
  }
}

abstract class InvalidItemType<T> implements ValueFailure<T> {
  const factory InvalidItemType({required final T failedValue}) =
      _$InvalidItemType<T>;

  T get failedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$InvalidItemTypeCopyWith<T, _$InvalidItemType<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidItemQuantityCopyWith<T, $Res> {
  factory _$$InvalidItemQuantityCopyWith(_$InvalidItemQuantity<T> value,
          $Res Function(_$InvalidItemQuantity<T>) then) =
      __$$InvalidItemQuantityCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class __$$InvalidItemQuantityCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$InvalidItemQuantityCopyWith<T, $Res> {
  __$$InvalidItemQuantityCopyWithImpl(_$InvalidItemQuantity<T> _value,
      $Res Function(_$InvalidItemQuantity<T>) _then)
      : super(_value, (v) => _then(v as _$InvalidItemQuantity<T>));

  @override
  _$InvalidItemQuantity<T> get _value =>
      super._value as _$InvalidItemQuantity<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InvalidItemQuantity<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidItemQuantity<T> implements InvalidItemQuantity<T> {
  const _$InvalidItemQuantity({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidItemQuantityAndPrice(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidItemQuantity<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$InvalidItemQuantityCopyWith<T, _$InvalidItemQuantity<T>> get copyWith =>
      __$$InvalidItemQuantityCopyWithImpl<T, _$InvalidItemQuantity<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maximum) exceedingLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidItemType,
    required TResult Function(T failedValue) invalidItemQuantityAndPrice,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidUser,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T? failedValue) invalidRegionType,
    required TResult Function(T failedValue) invalidRole,
  }) {
    return invalidItemQuantityAndPrice(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int maximum)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidItemType,
    TResult Function(T failedValue)? invalidItemQuantityAndPrice,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidUser,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T? failedValue)? invalidRegionType,
    TResult Function(T failedValue)? invalidRole,
  }) {
    return invalidItemQuantityAndPrice?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maximum)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidItemType,
    TResult Function(T failedValue)? invalidItemQuantityAndPrice,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidUser,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T? failedValue)? invalidRegionType,
    TResult Function(T failedValue)? invalidRole,
    required TResult orElse(),
  }) {
    if (invalidItemQuantityAndPrice != null) {
      return invalidItemQuantityAndPrice(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidItemType<T> value) invalidItemType,
    required TResult Function(InvalidItemQuantity<T> value)
        invalidItemQuantityAndPrice,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidUser<T> value) invalidUser,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(InvalidRegionType<T> value) invalidRegionType,
    required TResult Function(InvalidRole<T> value) invalidRole,
  }) {
    return invalidItemQuantityAndPrice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidItemType<T> value)? invalidItemType,
    TResult Function(InvalidItemQuantity<T> value)? invalidItemQuantityAndPrice,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidUser<T> value)? invalidUser,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidRegionType<T> value)? invalidRegionType,
    TResult Function(InvalidRole<T> value)? invalidRole,
  }) {
    return invalidItemQuantityAndPrice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidItemType<T> value)? invalidItemType,
    TResult Function(InvalidItemQuantity<T> value)? invalidItemQuantityAndPrice,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidUser<T> value)? invalidUser,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidRegionType<T> value)? invalidRegionType,
    TResult Function(InvalidRole<T> value)? invalidRole,
    required TResult orElse(),
  }) {
    if (invalidItemQuantityAndPrice != null) {
      return invalidItemQuantityAndPrice(this);
    }
    return orElse();
  }
}

abstract class InvalidItemQuantity<T> implements ValueFailure<T> {
  const factory InvalidItemQuantity({required final T failedValue}) =
      _$InvalidItemQuantity<T>;

  T get failedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$InvalidItemQuantityCopyWith<T, _$InvalidItemQuantity<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidEmailCopyWith<T, $Res> {
  factory _$$InvalidEmailCopyWith(
          _$InvalidEmail<T> value, $Res Function(_$InvalidEmail<T>) then) =
      __$$InvalidEmailCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class __$$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$InvalidEmailCopyWith<T, $Res> {
  __$$InvalidEmailCopyWithImpl(
      _$InvalidEmail<T> _value, $Res Function(_$InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as _$InvalidEmail<T>));

  @override
  _$InvalidEmail<T> get _value => super._value as _$InvalidEmail<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InvalidEmail<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidEmail<T> implements InvalidEmail<T> {
  const _$InvalidEmail({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidEmail<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$InvalidEmailCopyWith<T, _$InvalidEmail<T>> get copyWith =>
      __$$InvalidEmailCopyWithImpl<T, _$InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maximum) exceedingLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidItemType,
    required TResult Function(T failedValue) invalidItemQuantityAndPrice,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidUser,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T? failedValue) invalidRegionType,
    required TResult Function(T failedValue) invalidRole,
  }) {
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int maximum)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidItemType,
    TResult Function(T failedValue)? invalidItemQuantityAndPrice,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidUser,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T? failedValue)? invalidRegionType,
    TResult Function(T failedValue)? invalidRole,
  }) {
    return invalidEmail?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maximum)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidItemType,
    TResult Function(T failedValue)? invalidItemQuantityAndPrice,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidUser,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T? failedValue)? invalidRegionType,
    TResult Function(T failedValue)? invalidRole,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidItemType<T> value) invalidItemType,
    required TResult Function(InvalidItemQuantity<T> value)
        invalidItemQuantityAndPrice,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidUser<T> value) invalidUser,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(InvalidRegionType<T> value) invalidRegionType,
    required TResult Function(InvalidRole<T> value) invalidRole,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidItemType<T> value)? invalidItemType,
    TResult Function(InvalidItemQuantity<T> value)? invalidItemQuantityAndPrice,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidUser<T> value)? invalidUser,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidRegionType<T> value)? invalidRegionType,
    TResult Function(InvalidRole<T> value)? invalidRole,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidItemType<T> value)? invalidItemType,
    TResult Function(InvalidItemQuantity<T> value)? invalidItemQuantityAndPrice,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidUser<T> value)? invalidUser,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidRegionType<T> value)? invalidRegionType,
    TResult Function(InvalidRole<T> value)? invalidRole,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail({required final T failedValue}) =
      _$InvalidEmail<T>;

  T get failedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$InvalidEmailCopyWith<T, _$InvalidEmail<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidUserCopyWith<T, $Res> {
  factory _$$InvalidUserCopyWith(
          _$InvalidUser<T> value, $Res Function(_$InvalidUser<T>) then) =
      __$$InvalidUserCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class __$$InvalidUserCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$InvalidUserCopyWith<T, $Res> {
  __$$InvalidUserCopyWithImpl(
      _$InvalidUser<T> _value, $Res Function(_$InvalidUser<T>) _then)
      : super(_value, (v) => _then(v as _$InvalidUser<T>));

  @override
  _$InvalidUser<T> get _value => super._value as _$InvalidUser<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InvalidUser<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidUser<T> implements InvalidUser<T> {
  const _$InvalidUser({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidUser(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidUser<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$InvalidUserCopyWith<T, _$InvalidUser<T>> get copyWith =>
      __$$InvalidUserCopyWithImpl<T, _$InvalidUser<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maximum) exceedingLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidItemType,
    required TResult Function(T failedValue) invalidItemQuantityAndPrice,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidUser,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T? failedValue) invalidRegionType,
    required TResult Function(T failedValue) invalidRole,
  }) {
    return invalidUser(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int maximum)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidItemType,
    TResult Function(T failedValue)? invalidItemQuantityAndPrice,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidUser,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T? failedValue)? invalidRegionType,
    TResult Function(T failedValue)? invalidRole,
  }) {
    return invalidUser?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maximum)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidItemType,
    TResult Function(T failedValue)? invalidItemQuantityAndPrice,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidUser,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T? failedValue)? invalidRegionType,
    TResult Function(T failedValue)? invalidRole,
    required TResult orElse(),
  }) {
    if (invalidUser != null) {
      return invalidUser(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidItemType<T> value) invalidItemType,
    required TResult Function(InvalidItemQuantity<T> value)
        invalidItemQuantityAndPrice,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidUser<T> value) invalidUser,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(InvalidRegionType<T> value) invalidRegionType,
    required TResult Function(InvalidRole<T> value) invalidRole,
  }) {
    return invalidUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidItemType<T> value)? invalidItemType,
    TResult Function(InvalidItemQuantity<T> value)? invalidItemQuantityAndPrice,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidUser<T> value)? invalidUser,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidRegionType<T> value)? invalidRegionType,
    TResult Function(InvalidRole<T> value)? invalidRole,
  }) {
    return invalidUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidItemType<T> value)? invalidItemType,
    TResult Function(InvalidItemQuantity<T> value)? invalidItemQuantityAndPrice,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidUser<T> value)? invalidUser,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidRegionType<T> value)? invalidRegionType,
    TResult Function(InvalidRole<T> value)? invalidRole,
    required TResult orElse(),
  }) {
    if (invalidUser != null) {
      return invalidUser(this);
    }
    return orElse();
  }
}

abstract class InvalidUser<T> implements ValueFailure<T> {
  const factory InvalidUser({required final T failedValue}) = _$InvalidUser<T>;

  T get failedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$InvalidUserCopyWith<T, _$InvalidUser<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShortPasswordCopyWith<T, $Res> {
  factory _$$ShortPasswordCopyWith(
          _$ShortPassword<T> value, $Res Function(_$ShortPassword<T>) then) =
      __$$ShortPasswordCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class __$$ShortPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$ShortPasswordCopyWith<T, $Res> {
  __$$ShortPasswordCopyWithImpl(
      _$ShortPassword<T> _value, $Res Function(_$ShortPassword<T>) _then)
      : super(_value, (v) => _then(v as _$ShortPassword<T>));

  @override
  _$ShortPassword<T> get _value => super._value as _$ShortPassword<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$ShortPassword<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ShortPassword<T> implements ShortPassword<T> {
  const _$ShortPassword({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.shortPassword(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShortPassword<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$ShortPasswordCopyWith<T, _$ShortPassword<T>> get copyWith =>
      __$$ShortPasswordCopyWithImpl<T, _$ShortPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maximum) exceedingLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidItemType,
    required TResult Function(T failedValue) invalidItemQuantityAndPrice,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidUser,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T? failedValue) invalidRegionType,
    required TResult Function(T failedValue) invalidRole,
  }) {
    return shortPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int maximum)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidItemType,
    TResult Function(T failedValue)? invalidItemQuantityAndPrice,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidUser,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T? failedValue)? invalidRegionType,
    TResult Function(T failedValue)? invalidRole,
  }) {
    return shortPassword?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maximum)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidItemType,
    TResult Function(T failedValue)? invalidItemQuantityAndPrice,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidUser,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T? failedValue)? invalidRegionType,
    TResult Function(T failedValue)? invalidRole,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidItemType<T> value) invalidItemType,
    required TResult Function(InvalidItemQuantity<T> value)
        invalidItemQuantityAndPrice,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidUser<T> value) invalidUser,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(InvalidRegionType<T> value) invalidRegionType,
    required TResult Function(InvalidRole<T> value) invalidRole,
  }) {
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidItemType<T> value)? invalidItemType,
    TResult Function(InvalidItemQuantity<T> value)? invalidItemQuantityAndPrice,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidUser<T> value)? invalidUser,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidRegionType<T> value)? invalidRegionType,
    TResult Function(InvalidRole<T> value)? invalidRole,
  }) {
    return shortPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidItemType<T> value)? invalidItemType,
    TResult Function(InvalidItemQuantity<T> value)? invalidItemQuantityAndPrice,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidUser<T> value)? invalidUser,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidRegionType<T> value)? invalidRegionType,
    TResult Function(InvalidRole<T> value)? invalidRole,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class ShortPassword<T> implements ValueFailure<T> {
  const factory ShortPassword({required final T failedValue}) =
      _$ShortPassword<T>;

  T get failedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ShortPasswordCopyWith<T, _$ShortPassword<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidRegionTypeCopyWith<T, $Res> {
  factory _$$InvalidRegionTypeCopyWith(_$InvalidRegionType<T> value,
          $Res Function(_$InvalidRegionType<T>) then) =
      __$$InvalidRegionTypeCopyWithImpl<T, $Res>;
  $Res call({T? failedValue});
}

/// @nodoc
class __$$InvalidRegionTypeCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$InvalidRegionTypeCopyWith<T, $Res> {
  __$$InvalidRegionTypeCopyWithImpl(_$InvalidRegionType<T> _value,
      $Res Function(_$InvalidRegionType<T>) _then)
      : super(_value, (v) => _then(v as _$InvalidRegionType<T>));

  @override
  _$InvalidRegionType<T> get _value => super._value as _$InvalidRegionType<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InvalidRegionType<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$InvalidRegionType<T> implements InvalidRegionType<T> {
  const _$InvalidRegionType({this.failedValue});

  @override
  final T? failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidRegionType(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidRegionType<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$InvalidRegionTypeCopyWith<T, _$InvalidRegionType<T>> get copyWith =>
      __$$InvalidRegionTypeCopyWithImpl<T, _$InvalidRegionType<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maximum) exceedingLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidItemType,
    required TResult Function(T failedValue) invalidItemQuantityAndPrice,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidUser,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T? failedValue) invalidRegionType,
    required TResult Function(T failedValue) invalidRole,
  }) {
    return invalidRegionType(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int maximum)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidItemType,
    TResult Function(T failedValue)? invalidItemQuantityAndPrice,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidUser,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T? failedValue)? invalidRegionType,
    TResult Function(T failedValue)? invalidRole,
  }) {
    return invalidRegionType?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maximum)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidItemType,
    TResult Function(T failedValue)? invalidItemQuantityAndPrice,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidUser,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T? failedValue)? invalidRegionType,
    TResult Function(T failedValue)? invalidRole,
    required TResult orElse(),
  }) {
    if (invalidRegionType != null) {
      return invalidRegionType(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidItemType<T> value) invalidItemType,
    required TResult Function(InvalidItemQuantity<T> value)
        invalidItemQuantityAndPrice,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidUser<T> value) invalidUser,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(InvalidRegionType<T> value) invalidRegionType,
    required TResult Function(InvalidRole<T> value) invalidRole,
  }) {
    return invalidRegionType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidItemType<T> value)? invalidItemType,
    TResult Function(InvalidItemQuantity<T> value)? invalidItemQuantityAndPrice,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidUser<T> value)? invalidUser,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidRegionType<T> value)? invalidRegionType,
    TResult Function(InvalidRole<T> value)? invalidRole,
  }) {
    return invalidRegionType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidItemType<T> value)? invalidItemType,
    TResult Function(InvalidItemQuantity<T> value)? invalidItemQuantityAndPrice,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidUser<T> value)? invalidUser,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidRegionType<T> value)? invalidRegionType,
    TResult Function(InvalidRole<T> value)? invalidRole,
    required TResult orElse(),
  }) {
    if (invalidRegionType != null) {
      return invalidRegionType(this);
    }
    return orElse();
  }
}

abstract class InvalidRegionType<T> implements ValueFailure<T> {
  const factory InvalidRegionType({final T? failedValue}) =
      _$InvalidRegionType<T>;

  T? get failedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$InvalidRegionTypeCopyWith<T, _$InvalidRegionType<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidRoleCopyWith<T, $Res> {
  factory _$$InvalidRoleCopyWith(
          _$InvalidRole<T> value, $Res Function(_$InvalidRole<T>) then) =
      __$$InvalidRoleCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class __$$InvalidRoleCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$InvalidRoleCopyWith<T, $Res> {
  __$$InvalidRoleCopyWithImpl(
      _$InvalidRole<T> _value, $Res Function(_$InvalidRole<T>) _then)
      : super(_value, (v) => _then(v as _$InvalidRole<T>));

  @override
  _$InvalidRole<T> get _value => super._value as _$InvalidRole<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InvalidRole<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidRole<T> implements InvalidRole<T> {
  const _$InvalidRole({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidRole(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidRole<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$InvalidRoleCopyWith<T, _$InvalidRole<T>> get copyWith =>
      __$$InvalidRoleCopyWithImpl<T, _$InvalidRole<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maximum) exceedingLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidItemType,
    required TResult Function(T failedValue) invalidItemQuantityAndPrice,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidUser,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T? failedValue) invalidRegionType,
    required TResult Function(T failedValue) invalidRole,
  }) {
    return invalidRole(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int maximum)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidItemType,
    TResult Function(T failedValue)? invalidItemQuantityAndPrice,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidUser,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T? failedValue)? invalidRegionType,
    TResult Function(T failedValue)? invalidRole,
  }) {
    return invalidRole?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maximum)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidItemType,
    TResult Function(T failedValue)? invalidItemQuantityAndPrice,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidUser,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T? failedValue)? invalidRegionType,
    TResult Function(T failedValue)? invalidRole,
    required TResult orElse(),
  }) {
    if (invalidRole != null) {
      return invalidRole(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidItemType<T> value) invalidItemType,
    required TResult Function(InvalidItemQuantity<T> value)
        invalidItemQuantityAndPrice,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidUser<T> value) invalidUser,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(InvalidRegionType<T> value) invalidRegionType,
    required TResult Function(InvalidRole<T> value) invalidRole,
  }) {
    return invalidRole(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidItemType<T> value)? invalidItemType,
    TResult Function(InvalidItemQuantity<T> value)? invalidItemQuantityAndPrice,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidUser<T> value)? invalidUser,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidRegionType<T> value)? invalidRegionType,
    TResult Function(InvalidRole<T> value)? invalidRole,
  }) {
    return invalidRole?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidItemType<T> value)? invalidItemType,
    TResult Function(InvalidItemQuantity<T> value)? invalidItemQuantityAndPrice,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidUser<T> value)? invalidUser,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidRegionType<T> value)? invalidRegionType,
    TResult Function(InvalidRole<T> value)? invalidRole,
    required TResult orElse(),
  }) {
    if (invalidRole != null) {
      return invalidRole(this);
    }
    return orElse();
  }
}

abstract class InvalidRole<T> implements ValueFailure<T> {
  const factory InvalidRole({required final T failedValue}) = _$InvalidRole<T>;

  T get failedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$InvalidRoleCopyWith<T, _$InvalidRole<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
