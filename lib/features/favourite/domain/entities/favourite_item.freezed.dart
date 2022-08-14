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

  _Product call(
      {required UniqueId id,
      required ItemName name,
      required Price price,
      required ImageURL imageURL,
      required Rate rate,
      required Discount discount}) {
    return _Product(
      id: id,
      name: name,
      price: price,
      imageURL: imageURL,
      rate: rate,
      discount: discount,
    );
  }
}

/// @nodoc
const $FavouriteItem = _$FavouriteItemTearOff();

/// @nodoc
mixin _$FavouriteItem {
  UniqueId get id => throw _privateConstructorUsedError;
  ItemName get name => throw _privateConstructorUsedError;
  Price get price => throw _privateConstructorUsedError;
  ImageURL get imageURL => throw _privateConstructorUsedError;
  Rate get rate => throw _privateConstructorUsedError;
  Discount get discount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavouriteItemCopyWith<FavouriteItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouriteItemCopyWith<$Res> {
  factory $FavouriteItemCopyWith(
          FavouriteItem value, $Res Function(FavouriteItem) then) =
      _$FavouriteItemCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      ItemName name,
      Price price,
      ImageURL imageURL,
      Rate rate,
      Discount discount});
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
    Object? name = freezed,
    Object? price = freezed,
    Object? imageURL = freezed,
    Object? rate = freezed,
    Object? discount = freezed,
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
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
      imageURL: imageURL == freezed
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as ImageURL,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as Rate,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as Discount,
    ));
  }
}

/// @nodoc
abstract class _$ProductCopyWith<$Res> implements $FavouriteItemCopyWith<$Res> {
  factory _$ProductCopyWith(_Product value, $Res Function(_Product) then) =
      __$ProductCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      ItemName name,
      Price price,
      ImageURL imageURL,
      Rate rate,
      Discount discount});
}

/// @nodoc
class __$ProductCopyWithImpl<$Res> extends _$FavouriteItemCopyWithImpl<$Res>
    implements _$ProductCopyWith<$Res> {
  __$ProductCopyWithImpl(_Product _value, $Res Function(_Product) _then)
      : super(_value, (v) => _then(v as _Product));

  @override
  _Product get _value => super._value as _Product;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? imageURL = freezed,
    Object? rate = freezed,
    Object? discount = freezed,
  }) {
    return _then(_Product(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as ItemName,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
      imageURL: imageURL == freezed
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as ImageURL,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as Rate,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as Discount,
    ));
  }
}

/// @nodoc

class _$_Product extends _Product {
  const _$_Product(
      {required this.id,
      required this.name,
      required this.price,
      required this.imageURL,
      required this.rate,
      required this.discount})
      : super._();

  @override
  final UniqueId id;
  @override
  final ItemName name;
  @override
  final Price price;
  @override
  final ImageURL imageURL;
  @override
  final Rate rate;
  @override
  final Discount discount;

  @override
  String toString() {
    return 'FavouriteItem(id: $id, name: $name, price: $price, imageURL: $imageURL, rate: $rate, discount: $discount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Product &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.imageURL, imageURL) &&
            const DeepCollectionEquality().equals(other.rate, rate) &&
            const DeepCollectionEquality().equals(other.discount, discount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(imageURL),
      const DeepCollectionEquality().hash(rate),
      const DeepCollectionEquality().hash(discount));

  @JsonKey(ignore: true)
  @override
  _$ProductCopyWith<_Product> get copyWith =>
      __$ProductCopyWithImpl<_Product>(this, _$identity);
}

abstract class _Product extends FavouriteItem {
  const factory _Product(
      {required UniqueId id,
      required ItemName name,
      required Price price,
      required ImageURL imageURL,
      required Rate rate,
      required Discount discount}) = _$_Product;
  const _Product._() : super._();

  @override
  UniqueId get id;
  @override
  ItemName get name;
  @override
  Price get price;
  @override
  ImageURL get imageURL;
  @override
  Rate get rate;
  @override
  Discount get discount;
  @override
  @JsonKey(ignore: true)
  _$ProductCopyWith<_Product> get copyWith =>
      throw _privateConstructorUsedError;
}
