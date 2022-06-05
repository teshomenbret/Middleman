// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user, String token) success,
    required TResult Function(Error error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user, String token)? success,
    TResult Function(Error error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user, String token)? success,
    TResult Function(Error error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginStateInitial value) initial,
    required TResult Function(LoginStateLoading value) loading,
    required TResult Function(LoginStateSuccess value) success,
    required TResult Function(LoginStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginStateInitial value)? initial,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(LoginStateSuccess value)? success,
    TResult Function(LoginStateFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginStateInitial value)? initial,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(LoginStateSuccess value)? success,
    TResult Function(LoginStateFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;
}

/// @nodoc
abstract class _$$LoginStateInitialCopyWith<$Res> {
  factory _$$LoginStateInitialCopyWith(
          _$LoginStateInitial value, $Res Function(_$LoginStateInitial) then) =
      __$$LoginStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginStateInitialCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements _$$LoginStateInitialCopyWith<$Res> {
  __$$LoginStateInitialCopyWithImpl(
      _$LoginStateInitial _value, $Res Function(_$LoginStateInitial) _then)
      : super(_value, (v) => _then(v as _$LoginStateInitial));

  @override
  _$LoginStateInitial get _value => super._value as _$LoginStateInitial;
}

/// @nodoc

class _$LoginStateInitial implements LoginStateInitial {
  const _$LoginStateInitial();

  @override
  String toString() {
    return 'LoginState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user, String token) success,
    required TResult Function(Error error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user, String token)? success,
    TResult Function(Error error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user, String token)? success,
    TResult Function(Error error)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginStateInitial value) initial,
    required TResult Function(LoginStateLoading value) loading,
    required TResult Function(LoginStateSuccess value) success,
    required TResult Function(LoginStateFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginStateInitial value)? initial,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(LoginStateSuccess value)? success,
    TResult Function(LoginStateFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginStateInitial value)? initial,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(LoginStateSuccess value)? success,
    TResult Function(LoginStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class LoginStateInitial implements LoginState {
  const factory LoginStateInitial() = _$LoginStateInitial;
}

/// @nodoc
abstract class _$$LoginStateLoadingCopyWith<$Res> {
  factory _$$LoginStateLoadingCopyWith(
          _$LoginStateLoading value, $Res Function(_$LoginStateLoading) then) =
      __$$LoginStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginStateLoadingCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements _$$LoginStateLoadingCopyWith<$Res> {
  __$$LoginStateLoadingCopyWithImpl(
      _$LoginStateLoading _value, $Res Function(_$LoginStateLoading) _then)
      : super(_value, (v) => _then(v as _$LoginStateLoading));

  @override
  _$LoginStateLoading get _value => super._value as _$LoginStateLoading;
}

/// @nodoc

class _$LoginStateLoading implements LoginStateLoading {
  const _$LoginStateLoading();

  @override
  String toString() {
    return 'LoginState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user, String token) success,
    required TResult Function(Error error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user, String token)? success,
    TResult Function(Error error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user, String token)? success,
    TResult Function(Error error)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginStateInitial value) initial,
    required TResult Function(LoginStateLoading value) loading,
    required TResult Function(LoginStateSuccess value) success,
    required TResult Function(LoginStateFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginStateInitial value)? initial,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(LoginStateSuccess value)? success,
    TResult Function(LoginStateFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginStateInitial value)? initial,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(LoginStateSuccess value)? success,
    TResult Function(LoginStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoginStateLoading implements LoginState {
  const factory LoginStateLoading() = _$LoginStateLoading;
}

/// @nodoc
abstract class _$$LoginStateSuccessCopyWith<$Res> {
  factory _$$LoginStateSuccessCopyWith(
          _$LoginStateSuccess value, $Res Function(_$LoginStateSuccess) then) =
      __$$LoginStateSuccessCopyWithImpl<$Res>;
  $Res call({User user, String token});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$LoginStateSuccessCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements _$$LoginStateSuccessCopyWith<$Res> {
  __$$LoginStateSuccessCopyWithImpl(
      _$LoginStateSuccess _value, $Res Function(_$LoginStateSuccess) _then)
      : super(_value, (v) => _then(v as _$LoginStateSuccess));

  @override
  _$LoginStateSuccess get _value => super._value as _$LoginStateSuccess;

  @override
  $Res call({
    Object? user = freezed,
    Object? token = freezed,
  }) {
    return _then(_$LoginStateSuccess(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$LoginStateSuccess implements LoginStateSuccess {
  const _$LoginStateSuccess(this.user, this.token);

  @override
  final User user;
  @override
  final String token;

  @override
  String toString() {
    return 'LoginState.success(user: $user, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateSuccess &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$$LoginStateSuccessCopyWith<_$LoginStateSuccess> get copyWith =>
      __$$LoginStateSuccessCopyWithImpl<_$LoginStateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user, String token) success,
    required TResult Function(Error error) failure,
  }) {
    return success(user, token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user, String token)? success,
    TResult Function(Error error)? failure,
  }) {
    return success?.call(user, token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user, String token)? success,
    TResult Function(Error error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(user, token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginStateInitial value) initial,
    required TResult Function(LoginStateLoading value) loading,
    required TResult Function(LoginStateSuccess value) success,
    required TResult Function(LoginStateFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginStateInitial value)? initial,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(LoginStateSuccess value)? success,
    TResult Function(LoginStateFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginStateInitial value)? initial,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(LoginStateSuccess value)? success,
    TResult Function(LoginStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class LoginStateSuccess implements LoginState {
  const factory LoginStateSuccess(final User user, final String token) =
      _$LoginStateSuccess;

  User get user => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$LoginStateSuccessCopyWith<_$LoginStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginStateFailureCopyWith<$Res> {
  factory _$$LoginStateFailureCopyWith(
          _$LoginStateFailure value, $Res Function(_$LoginStateFailure) then) =
      __$$LoginStateFailureCopyWithImpl<$Res>;
  $Res call({Error error});
}

/// @nodoc
class __$$LoginStateFailureCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements _$$LoginStateFailureCopyWith<$Res> {
  __$$LoginStateFailureCopyWithImpl(
      _$LoginStateFailure _value, $Res Function(_$LoginStateFailure) _then)
      : super(_value, (v) => _then(v as _$LoginStateFailure));

  @override
  _$LoginStateFailure get _value => super._value as _$LoginStateFailure;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$LoginStateFailure(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error,
    ));
  }
}

/// @nodoc

class _$LoginStateFailure implements LoginStateFailure {
  const _$LoginStateFailure(this.error);

  @override
  final Error error;

  @override
  String toString() {
    return 'LoginState.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateFailure &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$LoginStateFailureCopyWith<_$LoginStateFailure> get copyWith =>
      __$$LoginStateFailureCopyWithImpl<_$LoginStateFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user, String token) success,
    required TResult Function(Error error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user, String token)? success,
    TResult Function(Error error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user, String token)? success,
    TResult Function(Error error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginStateInitial value) initial,
    required TResult Function(LoginStateLoading value) loading,
    required TResult Function(LoginStateSuccess value) success,
    required TResult Function(LoginStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginStateInitial value)? initial,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(LoginStateSuccess value)? success,
    TResult Function(LoginStateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginStateInitial value)? initial,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(LoginStateSuccess value)? success,
    TResult Function(LoginStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class LoginStateFailure implements LoginState {
  const factory LoginStateFailure(final Error error) = _$LoginStateFailure;

  Error get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$LoginStateFailureCopyWith<_$LoginStateFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
