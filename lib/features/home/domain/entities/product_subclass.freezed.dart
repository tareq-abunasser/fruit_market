// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_subclass.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProductSubclassTearOff {
  const _$ProductSubclassTearOff();

  _ProductSubclass call(
      {required UniqueId id,
      required UniqueId parentId,
      required ItemName name,
      required Description desc,
      required Discount discount}) {
    return _ProductSubclass(
      id: id,
      parentId: parentId,
      name: name,
      desc: desc,
      discount: discount,
    );
  }
}

/// @nodoc
const $ProductSubclass = _$ProductSubclassTearOff();

/// @nodoc
mixin _$ProductSubclass {
  UniqueId get id => throw _privateConstructorUsedError;
  UniqueId get parentId => throw _privateConstructorUsedError;
  ItemName get name => throw _privateConstructorUsedError;
  Description get desc => throw _privateConstructorUsedError;
  Discount get discount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductSubclassCopyWith<ProductSubclass> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductSubclassCopyWith<$Res> {
  factory $ProductSubclassCopyWith(
          ProductSubclass value, $Res Function(ProductSubclass) then) =
      _$ProductSubclassCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      UniqueId parentId,
      ItemName name,
      Description desc,
      Discount discount});
}

/// @nodoc
class _$ProductSubclassCopyWithImpl<$Res>
    implements $ProductSubclassCopyWith<$Res> {
  _$ProductSubclassCopyWithImpl(this._value, this._then);

  final ProductSubclass _value;
  // ignore: unused_field
  final $Res Function(ProductSubclass) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? parentId = freezed,
    Object? name = freezed,
    Object? desc = freezed,
    Object? discount = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      parentId: parentId == freezed
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as ItemName,
      desc: desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as Description,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as Discount,
    ));
  }
}

/// @nodoc
abstract class _$ProductSubclassCopyWith<$Res>
    implements $ProductSubclassCopyWith<$Res> {
  factory _$ProductSubclassCopyWith(
          _ProductSubclass value, $Res Function(_ProductSubclass) then) =
      __$ProductSubclassCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      UniqueId parentId,
      ItemName name,
      Description desc,
      Discount discount});
}

/// @nodoc
class __$ProductSubclassCopyWithImpl<$Res>
    extends _$ProductSubclassCopyWithImpl<$Res>
    implements _$ProductSubclassCopyWith<$Res> {
  __$ProductSubclassCopyWithImpl(
      _ProductSubclass _value, $Res Function(_ProductSubclass) _then)
      : super(_value, (v) => _then(v as _ProductSubclass));

  @override
  _ProductSubclass get _value => super._value as _ProductSubclass;

  @override
  $Res call({
    Object? id = freezed,
    Object? parentId = freezed,
    Object? name = freezed,
    Object? desc = freezed,
    Object? discount = freezed,
  }) {
    return _then(_ProductSubclass(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      parentId: parentId == freezed
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as ItemName,
      desc: desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as Description,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as Discount,
    ));
  }
}

/// @nodoc

class _$_ProductSubclass extends _ProductSubclass {
  const _$_ProductSubclass(
      {required this.id,
      required this.parentId,
      required this.name,
      required this.desc,
      required this.discount})
      : super._();

  @override
  final UniqueId id;
  @override
  final UniqueId parentId;
  @override
  final ItemName name;
  @override
  final Description desc;
  @override
  final Discount discount;

  @override
  String toString() {
    return 'ProductSubclass(id: $id, parentId: $parentId, name: $name, desc: $desc, discount: $discount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductSubclass &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.parentId, parentId) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.desc, desc) &&
            const DeepCollectionEquality().equals(other.discount, discount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(parentId),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(desc),
      const DeepCollectionEquality().hash(discount));

  @JsonKey(ignore: true)
  @override
  _$ProductSubclassCopyWith<_ProductSubclass> get copyWith =>
      __$ProductSubclassCopyWithImpl<_ProductSubclass>(this, _$identity);
}

abstract class _ProductSubclass extends ProductSubclass {
  const factory _ProductSubclass(
      {required UniqueId id,
      required UniqueId parentId,
      required ItemName name,
      required Description desc,
      required Discount discount}) = _$_ProductSubclass;
  const _ProductSubclass._() : super._();

  @override
  UniqueId get id;
  @override
  UniqueId get parentId;
  @override
  ItemName get name;
  @override
  Description get desc;
  @override
  Discount get discount;
  @override
  @JsonKey(ignore: true)
  _$ProductSubclassCopyWith<_ProductSubclass> get copyWith =>
      throw _privateConstructorUsedError;
}
