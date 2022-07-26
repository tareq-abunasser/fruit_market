// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CartItemTearOff {
  const _$CartItemTearOff();

  _CartItem call(
      {required UniqueId id,
      required ItemName name,
      required ImageURL imageURL,
      required Price currentPrice,
      required Price oldPrice,
      required Price saved,
      required Quantity quantity}) {
    return _CartItem(
      id: id,
      name: name,
      imageURL: imageURL,
      currentPrice: currentPrice,
      oldPrice: oldPrice,
      saved: saved,
      quantity: quantity,
    );
  }
}

/// @nodoc
const $CartItem = _$CartItemTearOff();

/// @nodoc
mixin _$CartItem {
  UniqueId get id => throw _privateConstructorUsedError;
  ItemName get name => throw _privateConstructorUsedError;
  ImageURL get imageURL => throw _privateConstructorUsedError;
  Price get currentPrice => throw _privateConstructorUsedError;
  Price get oldPrice => throw _privateConstructorUsedError;
  Price get saved => throw _privateConstructorUsedError;
  Quantity get quantity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartItemCopyWith<CartItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartItemCopyWith<$Res> {
  factory $CartItemCopyWith(CartItem value, $Res Function(CartItem) then) =
      _$CartItemCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      ItemName name,
      ImageURL imageURL,
      Price currentPrice,
      Price oldPrice,
      Price saved,
      Quantity quantity});
}

/// @nodoc
class _$CartItemCopyWithImpl<$Res> implements $CartItemCopyWith<$Res> {
  _$CartItemCopyWithImpl(this._value, this._then);

  final CartItem _value;
  // ignore: unused_field
  final $Res Function(CartItem) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? imageURL = freezed,
    Object? currentPrice = freezed,
    Object? oldPrice = freezed,
    Object? saved = freezed,
    Object? quantity = freezed,
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
      imageURL: imageURL == freezed
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as ImageURL,
      currentPrice: currentPrice == freezed
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as Price,
      oldPrice: oldPrice == freezed
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as Price,
      saved: saved == freezed
          ? _value.saved
          : saved // ignore: cast_nullable_to_non_nullable
              as Price,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as Quantity,
    ));
  }
}

/// @nodoc
abstract class _$CartItemCopyWith<$Res> implements $CartItemCopyWith<$Res> {
  factory _$CartItemCopyWith(_CartItem value, $Res Function(_CartItem) then) =
      __$CartItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      ItemName name,
      ImageURL imageURL,
      Price currentPrice,
      Price oldPrice,
      Price saved,
      Quantity quantity});
}

/// @nodoc
class __$CartItemCopyWithImpl<$Res> extends _$CartItemCopyWithImpl<$Res>
    implements _$CartItemCopyWith<$Res> {
  __$CartItemCopyWithImpl(_CartItem _value, $Res Function(_CartItem) _then)
      : super(_value, (v) => _then(v as _CartItem));

  @override
  _CartItem get _value => super._value as _CartItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? imageURL = freezed,
    Object? currentPrice = freezed,
    Object? oldPrice = freezed,
    Object? saved = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_CartItem(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as ItemName,
      imageURL: imageURL == freezed
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as ImageURL,
      currentPrice: currentPrice == freezed
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as Price,
      oldPrice: oldPrice == freezed
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as Price,
      saved: saved == freezed
          ? _value.saved
          : saved // ignore: cast_nullable_to_non_nullable
              as Price,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as Quantity,
    ));
  }
}

/// @nodoc

class _$_CartItem extends _CartItem {
  const _$_CartItem(
      {required this.id,
      required this.name,
      required this.imageURL,
      required this.currentPrice,
      required this.oldPrice,
      required this.saved,
      required this.quantity})
      : super._();

  @override
  final UniqueId id;
  @override
  final ItemName name;
  @override
  final ImageURL imageURL;
  @override
  final Price currentPrice;
  @override
  final Price oldPrice;
  @override
  final Price saved;
  @override
  final Quantity quantity;

  @override
  String toString() {
    return 'CartItem(id: $id, name: $name, imageURL: $imageURL, currentPrice: $currentPrice, oldPrice: $oldPrice, saved: $saved, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CartItem &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.imageURL, imageURL) &&
            const DeepCollectionEquality()
                .equals(other.currentPrice, currentPrice) &&
            const DeepCollectionEquality().equals(other.oldPrice, oldPrice) &&
            const DeepCollectionEquality().equals(other.saved, saved) &&
            const DeepCollectionEquality().equals(other.quantity, quantity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(imageURL),
      const DeepCollectionEquality().hash(currentPrice),
      const DeepCollectionEquality().hash(oldPrice),
      const DeepCollectionEquality().hash(saved),
      const DeepCollectionEquality().hash(quantity));

  @JsonKey(ignore: true)
  @override
  _$CartItemCopyWith<_CartItem> get copyWith =>
      __$CartItemCopyWithImpl<_CartItem>(this, _$identity);
}

abstract class _CartItem extends CartItem {
  const factory _CartItem(
      {required UniqueId id,
      required ItemName name,
      required ImageURL imageURL,
      required Price currentPrice,
      required Price oldPrice,
      required Price saved,
      required Quantity quantity}) = _$_CartItem;
  const _CartItem._() : super._();

  @override
  UniqueId get id;
  @override
  ItemName get name;
  @override
  ImageURL get imageURL;
  @override
  Price get currentPrice;
  @override
  Price get oldPrice;
  @override
  Price get saved;
  @override
  Quantity get quantity;
  @override
  @JsonKey(ignore: true)
  _$CartItemCopyWith<_CartItem> get copyWith =>
      throw _privateConstructorUsedError;
}
