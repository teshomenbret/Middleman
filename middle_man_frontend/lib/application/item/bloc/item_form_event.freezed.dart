// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'item_form_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ItemFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Item item) create,
    required TResult Function() read,
    required TResult Function(Item item) update,
    required TResult Function(Item item) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Item item)? create,
    TResult Function()? read,
    TResult Function(Item item)? update,
    TResult Function(Item item)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Item item)? create,
    TResult Function()? read,
    TResult Function(Item item)? update,
    TResult Function(Item item)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemFormEventCreate value) create,
    required TResult Function(ItemFormEventRead value) read,
    required TResult Function(ItemFormEventUpdate value) update,
    required TResult Function(ItemFormEventDelete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ItemFormEventCreate value)? create,
    TResult Function(ItemFormEventRead value)? read,
    TResult Function(ItemFormEventUpdate value)? update,
    TResult Function(ItemFormEventDelete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemFormEventCreate value)? create,
    TResult Function(ItemFormEventRead value)? read,
    TResult Function(ItemFormEventUpdate value)? update,
    TResult Function(ItemFormEventDelete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemFormEventCopyWith<$Res> {
  factory $ItemFormEventCopyWith(
          ItemFormEvent value, $Res Function(ItemFormEvent) then) =
      _$ItemFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ItemFormEventCopyWithImpl<$Res>
    implements $ItemFormEventCopyWith<$Res> {
  _$ItemFormEventCopyWithImpl(this._value, this._then);

  final ItemFormEvent _value;
  // ignore: unused_field
  final $Res Function(ItemFormEvent) _then;
}

/// @nodoc
abstract class _$$ItemFormEventCreateCopyWith<$Res> {
  factory _$$ItemFormEventCreateCopyWith(_$ItemFormEventCreate value,
          $Res Function(_$ItemFormEventCreate) then) =
      __$$ItemFormEventCreateCopyWithImpl<$Res>;
  $Res call({Item item});

  $ItemCopyWith<$Res> get item;
}

/// @nodoc
class __$$ItemFormEventCreateCopyWithImpl<$Res>
    extends _$ItemFormEventCopyWithImpl<$Res>
    implements _$$ItemFormEventCreateCopyWith<$Res> {
  __$$ItemFormEventCreateCopyWithImpl(
      _$ItemFormEventCreate _value, $Res Function(_$ItemFormEventCreate) _then)
      : super(_value, (v) => _then(v as _$ItemFormEventCreate));

  @override
  _$ItemFormEventCreate get _value => super._value as _$ItemFormEventCreate;

  @override
  $Res call({
    Object? item = freezed,
  }) {
    return _then(_$ItemFormEventCreate(
      item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Item,
    ));
  }

  @override
  $ItemCopyWith<$Res> get item {
    return $ItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$ItemFormEventCreate extends ItemFormEventCreate {
  const _$ItemFormEventCreate(this.item) : super._();

  @override
  final Item item;

  @override
  String toString() {
    return 'ItemFormEvent.create(item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemFormEventCreate &&
            const DeepCollectionEquality().equals(other.item, item));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(item));

  @JsonKey(ignore: true)
  @override
  _$$ItemFormEventCreateCopyWith<_$ItemFormEventCreate> get copyWith =>
      __$$ItemFormEventCreateCopyWithImpl<_$ItemFormEventCreate>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Item item) create,
    required TResult Function() read,
    required TResult Function(Item item) update,
    required TResult Function(Item item) delete,
  }) {
    return create(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Item item)? create,
    TResult Function()? read,
    TResult Function(Item item)? update,
    TResult Function(Item item)? delete,
  }) {
    return create?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Item item)? create,
    TResult Function()? read,
    TResult Function(Item item)? update,
    TResult Function(Item item)? delete,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemFormEventCreate value) create,
    required TResult Function(ItemFormEventRead value) read,
    required TResult Function(ItemFormEventUpdate value) update,
    required TResult Function(ItemFormEventDelete value) delete,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ItemFormEventCreate value)? create,
    TResult Function(ItemFormEventRead value)? read,
    TResult Function(ItemFormEventUpdate value)? update,
    TResult Function(ItemFormEventDelete value)? delete,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemFormEventCreate value)? create,
    TResult Function(ItemFormEventRead value)? read,
    TResult Function(ItemFormEventUpdate value)? update,
    TResult Function(ItemFormEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class ItemFormEventCreate extends ItemFormEvent {
  const factory ItemFormEventCreate(final Item item) = _$ItemFormEventCreate;
  const ItemFormEventCreate._() : super._();

  Item get item => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ItemFormEventCreateCopyWith<_$ItemFormEventCreate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ItemFormEventReadCopyWith<$Res> {
  factory _$$ItemFormEventReadCopyWith(
          _$ItemFormEventRead value, $Res Function(_$ItemFormEventRead) then) =
      __$$ItemFormEventReadCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ItemFormEventReadCopyWithImpl<$Res>
    extends _$ItemFormEventCopyWithImpl<$Res>
    implements _$$ItemFormEventReadCopyWith<$Res> {
  __$$ItemFormEventReadCopyWithImpl(
      _$ItemFormEventRead _value, $Res Function(_$ItemFormEventRead) _then)
      : super(_value, (v) => _then(v as _$ItemFormEventRead));

  @override
  _$ItemFormEventRead get _value => super._value as _$ItemFormEventRead;
}

/// @nodoc

class _$ItemFormEventRead extends ItemFormEventRead {
  const _$ItemFormEventRead() : super._();

  @override
  String toString() {
    return 'ItemFormEvent.read()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ItemFormEventRead);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Item item) create,
    required TResult Function() read,
    required TResult Function(Item item) update,
    required TResult Function(Item item) delete,
  }) {
    return read();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Item item)? create,
    TResult Function()? read,
    TResult Function(Item item)? update,
    TResult Function(Item item)? delete,
  }) {
    return read?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Item item)? create,
    TResult Function()? read,
    TResult Function(Item item)? update,
    TResult Function(Item item)? delete,
    required TResult orElse(),
  }) {
    if (read != null) {
      return read();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemFormEventCreate value) create,
    required TResult Function(ItemFormEventRead value) read,
    required TResult Function(ItemFormEventUpdate value) update,
    required TResult Function(ItemFormEventDelete value) delete,
  }) {
    return read(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ItemFormEventCreate value)? create,
    TResult Function(ItemFormEventRead value)? read,
    TResult Function(ItemFormEventUpdate value)? update,
    TResult Function(ItemFormEventDelete value)? delete,
  }) {
    return read?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemFormEventCreate value)? create,
    TResult Function(ItemFormEventRead value)? read,
    TResult Function(ItemFormEventUpdate value)? update,
    TResult Function(ItemFormEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (read != null) {
      return read(this);
    }
    return orElse();
  }
}

abstract class ItemFormEventRead extends ItemFormEvent {
  const factory ItemFormEventRead() = _$ItemFormEventRead;
  const ItemFormEventRead._() : super._();
}

/// @nodoc
abstract class _$$ItemFormEventUpdateCopyWith<$Res> {
  factory _$$ItemFormEventUpdateCopyWith(_$ItemFormEventUpdate value,
          $Res Function(_$ItemFormEventUpdate) then) =
      __$$ItemFormEventUpdateCopyWithImpl<$Res>;
  $Res call({Item item});

  $ItemCopyWith<$Res> get item;
}

/// @nodoc
class __$$ItemFormEventUpdateCopyWithImpl<$Res>
    extends _$ItemFormEventCopyWithImpl<$Res>
    implements _$$ItemFormEventUpdateCopyWith<$Res> {
  __$$ItemFormEventUpdateCopyWithImpl(
      _$ItemFormEventUpdate _value, $Res Function(_$ItemFormEventUpdate) _then)
      : super(_value, (v) => _then(v as _$ItemFormEventUpdate));

  @override
  _$ItemFormEventUpdate get _value => super._value as _$ItemFormEventUpdate;

  @override
  $Res call({
    Object? item = freezed,
  }) {
    return _then(_$ItemFormEventUpdate(
      item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Item,
    ));
  }

  @override
  $ItemCopyWith<$Res> get item {
    return $ItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$ItemFormEventUpdate extends ItemFormEventUpdate {
  const _$ItemFormEventUpdate(this.item) : super._();

  @override
  final Item item;

  @override
  String toString() {
    return 'ItemFormEvent.update(item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemFormEventUpdate &&
            const DeepCollectionEquality().equals(other.item, item));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(item));

  @JsonKey(ignore: true)
  @override
  _$$ItemFormEventUpdateCopyWith<_$ItemFormEventUpdate> get copyWith =>
      __$$ItemFormEventUpdateCopyWithImpl<_$ItemFormEventUpdate>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Item item) create,
    required TResult Function() read,
    required TResult Function(Item item) update,
    required TResult Function(Item item) delete,
  }) {
    return update(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Item item)? create,
    TResult Function()? read,
    TResult Function(Item item)? update,
    TResult Function(Item item)? delete,
  }) {
    return update?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Item item)? create,
    TResult Function()? read,
    TResult Function(Item item)? update,
    TResult Function(Item item)? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemFormEventCreate value) create,
    required TResult Function(ItemFormEventRead value) read,
    required TResult Function(ItemFormEventUpdate value) update,
    required TResult Function(ItemFormEventDelete value) delete,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ItemFormEventCreate value)? create,
    TResult Function(ItemFormEventRead value)? read,
    TResult Function(ItemFormEventUpdate value)? update,
    TResult Function(ItemFormEventDelete value)? delete,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemFormEventCreate value)? create,
    TResult Function(ItemFormEventRead value)? read,
    TResult Function(ItemFormEventUpdate value)? update,
    TResult Function(ItemFormEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class ItemFormEventUpdate extends ItemFormEvent {
  const factory ItemFormEventUpdate(final Item item) = _$ItemFormEventUpdate;
  const ItemFormEventUpdate._() : super._();

  Item get item => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ItemFormEventUpdateCopyWith<_$ItemFormEventUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ItemFormEventDeleteCopyWith<$Res> {
  factory _$$ItemFormEventDeleteCopyWith(_$ItemFormEventDelete value,
          $Res Function(_$ItemFormEventDelete) then) =
      __$$ItemFormEventDeleteCopyWithImpl<$Res>;
  $Res call({Item item});

  $ItemCopyWith<$Res> get item;
}

/// @nodoc
class __$$ItemFormEventDeleteCopyWithImpl<$Res>
    extends _$ItemFormEventCopyWithImpl<$Res>
    implements _$$ItemFormEventDeleteCopyWith<$Res> {
  __$$ItemFormEventDeleteCopyWithImpl(
      _$ItemFormEventDelete _value, $Res Function(_$ItemFormEventDelete) _then)
      : super(_value, (v) => _then(v as _$ItemFormEventDelete));

  @override
  _$ItemFormEventDelete get _value => super._value as _$ItemFormEventDelete;

  @override
  $Res call({
    Object? item = freezed,
  }) {
    return _then(_$ItemFormEventDelete(
      item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Item,
    ));
  }

  @override
  $ItemCopyWith<$Res> get item {
    return $ItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$ItemFormEventDelete extends ItemFormEventDelete {
  const _$ItemFormEventDelete(this.item) : super._();

  @override
  final Item item;

  @override
  String toString() {
    return 'ItemFormEvent.delete(item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemFormEventDelete &&
            const DeepCollectionEquality().equals(other.item, item));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(item));

  @JsonKey(ignore: true)
  @override
  _$$ItemFormEventDeleteCopyWith<_$ItemFormEventDelete> get copyWith =>
      __$$ItemFormEventDeleteCopyWithImpl<_$ItemFormEventDelete>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Item item) create,
    required TResult Function() read,
    required TResult Function(Item item) update,
    required TResult Function(Item item) delete,
  }) {
    return delete(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Item item)? create,
    TResult Function()? read,
    TResult Function(Item item)? update,
    TResult Function(Item item)? delete,
  }) {
    return delete?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Item item)? create,
    TResult Function()? read,
    TResult Function(Item item)? update,
    TResult Function(Item item)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemFormEventCreate value) create,
    required TResult Function(ItemFormEventRead value) read,
    required TResult Function(ItemFormEventUpdate value) update,
    required TResult Function(ItemFormEventDelete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ItemFormEventCreate value)? create,
    TResult Function(ItemFormEventRead value)? read,
    TResult Function(ItemFormEventUpdate value)? update,
    TResult Function(ItemFormEventDelete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemFormEventCreate value)? create,
    TResult Function(ItemFormEventRead value)? read,
    TResult Function(ItemFormEventUpdate value)? update,
    TResult Function(ItemFormEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class ItemFormEventDelete extends ItemFormEvent {
  const factory ItemFormEventDelete(final Item item) = _$ItemFormEventDelete;
  const ItemFormEventDelete._() : super._();

  Item get item => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ItemFormEventDeleteCopyWith<_$ItemFormEventDelete> get copyWith =>
      throw _privateConstructorUsedError;
}
