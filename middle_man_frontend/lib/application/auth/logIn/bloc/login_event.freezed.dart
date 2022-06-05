// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onPresed,
    required TResult Function(Auth auth) login,
    required TResult Function(User user) register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onPresed,
    TResult Function(Auth auth)? login,
    TResult Function(User user)? register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onPresed,
    TResult Function(Auth auth)? login,
    TResult Function(User user)? register,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEventPressed value) onPresed,
    required TResult Function(LoginEventLogin value) login,
    required TResult Function(LoginEventRegister value) register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginEventPressed value)? onPresed,
    TResult Function(LoginEventLogin value)? login,
    TResult Function(LoginEventRegister value)? register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEventPressed value)? onPresed,
    TResult Function(LoginEventLogin value)? login,
    TResult Function(LoginEventRegister value)? register,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res> implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  final LoginEvent _value;
  // ignore: unused_field
  final $Res Function(LoginEvent) _then;
}

/// @nodoc
abstract class _$$LoginEventPressedCopyWith<$Res> {
  factory _$$LoginEventPressedCopyWith(
          _$LoginEventPressed value, $Res Function(_$LoginEventPressed) then) =
      __$$LoginEventPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginEventPressedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$$LoginEventPressedCopyWith<$Res> {
  __$$LoginEventPressedCopyWithImpl(
      _$LoginEventPressed _value, $Res Function(_$LoginEventPressed) _then)
      : super(_value, (v) => _then(v as _$LoginEventPressed));

  @override
  _$LoginEventPressed get _value => super._value as _$LoginEventPressed;
}

/// @nodoc

class _$LoginEventPressed extends LoginEventPressed {
  const _$LoginEventPressed() : super._();

  @override
  String toString() {
    return 'LoginEvent.onPresed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginEventPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onPresed,
    required TResult Function(Auth auth) login,
    required TResult Function(User user) register,
  }) {
    return onPresed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onPresed,
    TResult Function(Auth auth)? login,
    TResult Function(User user)? register,
  }) {
    return onPresed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onPresed,
    TResult Function(Auth auth)? login,
    TResult Function(User user)? register,
    required TResult orElse(),
  }) {
    if (onPresed != null) {
      return onPresed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEventPressed value) onPresed,
    required TResult Function(LoginEventLogin value) login,
    required TResult Function(LoginEventRegister value) register,
  }) {
    return onPresed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginEventPressed value)? onPresed,
    TResult Function(LoginEventLogin value)? login,
    TResult Function(LoginEventRegister value)? register,
  }) {
    return onPresed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEventPressed value)? onPresed,
    TResult Function(LoginEventLogin value)? login,
    TResult Function(LoginEventRegister value)? register,
    required TResult orElse(),
  }) {
    if (onPresed != null) {
      return onPresed(this);
    }
    return orElse();
  }
}

abstract class LoginEventPressed extends LoginEvent {
  const factory LoginEventPressed() = _$LoginEventPressed;
  const LoginEventPressed._() : super._();
}

/// @nodoc
abstract class _$$LoginEventLoginCopyWith<$Res> {
  factory _$$LoginEventLoginCopyWith(
          _$LoginEventLogin value, $Res Function(_$LoginEventLogin) then) =
      __$$LoginEventLoginCopyWithImpl<$Res>;
  $Res call({Auth auth});

  $AuthCopyWith<$Res> get auth;
}

/// @nodoc
class __$$LoginEventLoginCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$$LoginEventLoginCopyWith<$Res> {
  __$$LoginEventLoginCopyWithImpl(
      _$LoginEventLogin _value, $Res Function(_$LoginEventLogin) _then)
      : super(_value, (v) => _then(v as _$LoginEventLogin));

  @override
  _$LoginEventLogin get _value => super._value as _$LoginEventLogin;

  @override
  $Res call({
    Object? auth = freezed,
  }) {
    return _then(_$LoginEventLogin(
      auth == freezed
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as Auth,
    ));
  }

  @override
  $AuthCopyWith<$Res> get auth {
    return $AuthCopyWith<$Res>(_value.auth, (value) {
      return _then(_value.copyWith(auth: value));
    });
  }
}

/// @nodoc

class _$LoginEventLogin extends LoginEventLogin {
  const _$LoginEventLogin(this.auth) : super._();

  @override
  final Auth auth;

  @override
  String toString() {
    return 'LoginEvent.login(auth: $auth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginEventLogin &&
            const DeepCollectionEquality().equals(other.auth, auth));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(auth));

  @JsonKey(ignore: true)
  @override
  _$$LoginEventLoginCopyWith<_$LoginEventLogin> get copyWith =>
      __$$LoginEventLoginCopyWithImpl<_$LoginEventLogin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onPresed,
    required TResult Function(Auth auth) login,
    required TResult Function(User user) register,
  }) {
    return login(auth);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onPresed,
    TResult Function(Auth auth)? login,
    TResult Function(User user)? register,
  }) {
    return login?.call(auth);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onPresed,
    TResult Function(Auth auth)? login,
    TResult Function(User user)? register,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(auth);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEventPressed value) onPresed,
    required TResult Function(LoginEventLogin value) login,
    required TResult Function(LoginEventRegister value) register,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginEventPressed value)? onPresed,
    TResult Function(LoginEventLogin value)? login,
    TResult Function(LoginEventRegister value)? register,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEventPressed value)? onPresed,
    TResult Function(LoginEventLogin value)? login,
    TResult Function(LoginEventRegister value)? register,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class LoginEventLogin extends LoginEvent {
  const factory LoginEventLogin(final Auth auth) = _$LoginEventLogin;
  const LoginEventLogin._() : super._();

  Auth get auth => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$LoginEventLoginCopyWith<_$LoginEventLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginEventRegisterCopyWith<$Res> {
  factory _$$LoginEventRegisterCopyWith(_$LoginEventRegister value,
          $Res Function(_$LoginEventRegister) then) =
      __$$LoginEventRegisterCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$LoginEventRegisterCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$$LoginEventRegisterCopyWith<$Res> {
  __$$LoginEventRegisterCopyWithImpl(
      _$LoginEventRegister _value, $Res Function(_$LoginEventRegister) _then)
      : super(_value, (v) => _then(v as _$LoginEventRegister));

  @override
  _$LoginEventRegister get _value => super._value as _$LoginEventRegister;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$LoginEventRegister(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
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

class _$LoginEventRegister extends LoginEventRegister {
  const _$LoginEventRegister(this.user) : super._();

  @override
  final User user;

  @override
  String toString() {
    return 'LoginEvent.register(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginEventRegister &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$LoginEventRegisterCopyWith<_$LoginEventRegister> get copyWith =>
      __$$LoginEventRegisterCopyWithImpl<_$LoginEventRegister>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onPresed,
    required TResult Function(Auth auth) login,
    required TResult Function(User user) register,
  }) {
    return register(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onPresed,
    TResult Function(Auth auth)? login,
    TResult Function(User user)? register,
  }) {
    return register?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onPresed,
    TResult Function(Auth auth)? login,
    TResult Function(User user)? register,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEventPressed value) onPresed,
    required TResult Function(LoginEventLogin value) login,
    required TResult Function(LoginEventRegister value) register,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginEventPressed value)? onPresed,
    TResult Function(LoginEventLogin value)? login,
    TResult Function(LoginEventRegister value)? register,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEventPressed value)? onPresed,
    TResult Function(LoginEventLogin value)? login,
    TResult Function(LoginEventRegister value)? register,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class LoginEventRegister extends LoginEvent {
  const factory LoginEventRegister(final User user) = _$LoginEventRegister;
  const LoginEventRegister._() : super._();

  User get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$LoginEventRegisterCopyWith<_$LoginEventRegister> get copyWith =>
      throw _privateConstructorUsedError;
}
