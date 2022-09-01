// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'subcategory.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SubcategoryTearOff {
  const _$SubcategoryTearOff();

  _Subcategory call(
      {required UniqueId id,
      required UniqueId parentId,
      required ItemName name,
      required Description desc,
      required Discount discount}) {
    return _Subcategory(
      id: id,
      parentId: parentId,
      name: name,
      desc: desc,
      discount: discount,
    );
  }
}

/// @nodoc
const $Subcategory = _$SubcategoryTearOff();

/// @nodoc
mixin _$Subcategory {
  UniqueId get id => throw _privateConstructorUsedError;
  UniqueId get parentId => throw _privateConstructorUsedError;
  ItemName get name => throw _privateConstructorUsedError;
  Description get desc => throw _privateConstructorUsedError;
  Discount get discount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SubcategoryCopyWith<Subcategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubcategoryCopyWith<$Res> {
  factory $SubcategoryCopyWith(
          Subcategory value, $Res Function(Subcategory) then) =
      _$SubcategoryCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      UniqueId parentId,
      ItemName name,
      Description desc,
      Discount discount});
}

/// @nodoc
class _$SubcategoryCopyWithImpl<$Res> implements $SubcategoryCopyWith<$Res> {
  _$SubcategoryCopyWithImpl(this._value, this._then);

  final Subcategory _value;
  // ignore: unused_field
  final $Res Function(Subcategory) _then;

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
abstract class _$SubcategoryCopyWith<$Res>
    implements $SubcategoryCopyWith<$Res> {
  factory _$SubcategoryCopyWith(
          _Subcategory value, $Res Function(_Subcategory) then) =
      __$SubcategoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      UniqueId parentId,
      ItemName name,
      Description desc,
      Discount discount});
}

/// @nodoc
class __$SubcategoryCopyWithImpl<$Res> extends _$SubcategoryCopyWithImpl<$Res>
    implements _$SubcategoryCopyWith<$Res> {
  __$SubcategoryCopyWithImpl(
      _Subcategory _value, $Res Function(_Subcategory) _then)
      : super(_value, (v) => _then(v as _Subcategory));

  @override
  _Subcategory get _value => super._value as _Subcategory;

  @override
  $Res call({
    Object? id = freezed,
    Object? parentId = freezed,
    Object? name = freezed,
    Object? desc = freezed,
    Object? discount = freezed,
  }) {
    return _then(_Subcategory(
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

class _$_Subcategory extends _Subcategory {
  const _$_Subcategory(
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
    return 'Subcategory(id: $id, parentId: $parentId, name: $name, desc: $desc, discount: $discount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Subcategory &&
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
  _$SubcategoryCopyWith<_Subcategory> get copyWith =>
      __$SubcategoryCopyWithImpl<_Subcategory>(this, _$identity);
}

abstract class _Subcategory extends Subcategory {
  const factory _Subcategory(
      {required UniqueId id,
      required UniqueId parentId,
      required ItemName name,
      required Description desc,
      required Discount discount}) = _$_Subcategory;
  const _Subcategory._() : super._();

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
  _$SubcategoryCopyWith<_Subcategory> get copyWith =>
      throw _privateConstructorUsedError;
}
