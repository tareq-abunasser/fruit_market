// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'favourite_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FavouriteItemTearOff {
  const _$FavouriteItemTearOff();

  _FavouriteItem call({required UniqueId id, required Product product}) {
    return _FavouriteItem(
      id: id,
      product: product,
    );
  }
}

/// @nodoc
const $FavouriteItem = _$FavouriteItemTearOff();

/// @nodoc
mixin _$FavouriteItem {
  UniqueId get id => throw _privateConstructorUsedError;
  Product get product => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavouriteItemCopyWith<FavouriteItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouriteItemCopyWith<$Res> {
  factory $FavouriteItemCopyWith(
          FavouriteItem value, $Res Function(FavouriteItem) then) =
      _$FavouriteItemCopyWithImpl<$Res>;
  $Res call({UniqueId id, Product product});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class _$FavouriteItemCopyWithImpl<$Res>
    implements $FavouriteItemCopyWith<$Res> {
  _$FavouriteItemCopyWithImpl(this._value, this._then);

  final FavouriteItem _value;
  // ignore: unused_field
  final $Res Function(FavouriteItem) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? product = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }

  @override
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc
abstract class _$FavouriteItemCopyWith<$Res>
    implements $FavouriteItemCopyWith<$Res> {
  factory _$FavouriteItemCopyWith(
          _FavouriteItem value, $Res Function(_FavouriteItem) then) =
      __$FavouriteItemCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, Product product});

  @override
  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$FavouriteItemCopyWithImpl<$Res>
    extends _$FavouriteItemCopyWithImpl<$Res>
    implements _$FavouriteItemCopyWith<$Res> {
  __$FavouriteItemCopyWithImpl(
      _FavouriteItem _value, $Res Function(_FavouriteItem) _then)
      : super(_value, (v) => _then(v as _FavouriteItem));

  @override
  _FavouriteItem get _value => super._value as _FavouriteItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? product = freezed,
  }) {
    return _then(_FavouriteItem(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }
}

/// @nodoc

class _$_FavouriteItem extends _FavouriteItem {
  const _$_FavouriteItem({required this.id, required this.product}) : super._();

  @override
  final UniqueId id;
  @override
  final Product product;

  @override
  String toString() {
    return 'FavouriteItem(id: $id, product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FavouriteItem &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.product, product));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(product));

  @JsonKey(ignore: true)
  @override
  _$FavouriteItemCopyWith<_FavouriteItem> get copyWith =>
      __$FavouriteItemCopyWithImpl<_FavouriteItem>(this, _$identity);
}

abstract class _FavouriteItem extends FavouriteItem {
  const factory _FavouriteItem(
      {required UniqueId id, required Product product}) = _$_FavouriteItem;
  const _FavouriteItem._() : super._();

  @override
  UniqueId get id;
  @override
  Product get product;
  @override
  @JsonKey(ignore: true)
  _$FavouriteItemCopyWith<_FavouriteItem> get copyWith =>
      throw _privateConstructorUsedError;
}
