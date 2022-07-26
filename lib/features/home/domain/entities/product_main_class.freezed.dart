// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_main_class.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProductMainClassTearOff {
  const _$ProductMainClassTearOff();

  _ProductMainClass call({required UniqueId id, required ItemName name}) {
    return _ProductMainClass(
      id: id,
      name: name,
    );
  }
}

/// @nodoc
const $ProductMainClass = _$ProductMainClassTearOff();

/// @nodoc
mixin _$ProductMainClass {
  UniqueId get id => throw _privateConstructorUsedError;
  ItemName get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductMainClassCopyWith<ProductMainClass> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductMainClassCopyWith<$Res> {
  factory $ProductMainClassCopyWith(
          ProductMainClass value, $Res Function(ProductMainClass) then) =
      _$ProductMainClassCopyWithImpl<$Res>;
  $Res call({UniqueId id, ItemName name});
}

/// @nodoc
class _$ProductMainClassCopyWithImpl<$Res>
    implements $ProductMainClassCopyWith<$Res> {
  _$ProductMainClassCopyWithImpl(this._value, this._then);

  final ProductMainClass _value;
  // ignore: unused_field
  final $Res Function(ProductMainClass) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as ItemName,
    ));
  }
}

/// @nodoc
abstract class _$ProductMainClassCopyWith<$Res>
    implements $ProductMainClassCopyWith<$Res> {
  factory _$ProductMainClassCopyWith(
          _ProductMainClass value, $Res Function(_ProductMainClass) then) =
      __$ProductMainClassCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, ItemName name});
}

/// @nodoc
class __$ProductMainClassCopyWithImpl<$Res>
    extends _$ProductMainClassCopyWithImpl<$Res>
    implements _$ProductMainClassCopyWith<$Res> {
  __$ProductMainClassCopyWithImpl(
      _ProductMainClass _value, $Res Function(_ProductMainClass) _then)
      : super(_value, (v) => _then(v as _ProductMainClass));

  @override
  _ProductMainClass get _value => super._value as _ProductMainClass;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_ProductMainClass(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as ItemName,
    ));
  }
}

/// @nodoc

class _$_ProductMainClass extends _ProductMainClass {
  const _$_ProductMainClass({required this.id, required this.name}) : super._();

  @override
  final UniqueId id;
  @override
  final ItemName name;

  @override
  String toString() {
    return 'ProductMainClass(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductMainClass &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$ProductMainClassCopyWith<_ProductMainClass> get copyWith =>
      __$ProductMainClassCopyWithImpl<_ProductMainClass>(this, _$identity);
}

abstract class _ProductMainClass extends ProductMainClass {
  const factory _ProductMainClass(
      {required UniqueId id, required ItemName name}) = _$_ProductMainClass;
  const _ProductMainClass._() : super._();

  @override
  UniqueId get id;
  @override
  ItemName get name;
  @override
  @JsonKey(ignore: true)
  _$ProductMainClassCopyWith<_ProductMainClass> get copyWith =>
      throw _privateConstructorUsedError;
}
