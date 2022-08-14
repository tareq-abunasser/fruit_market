// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OrderItemTearOff {
  const _$OrderItemTearOff();

  _Product call(
      {required UniqueId id,
      required ItemName name,
      required ImageURL imageURL,
      required double rate,
      required DateTime deliveredOn}) {
    return _Product(
      id: id,
      name: name,
      imageURL: imageURL,
      rate: rate,
      deliveredOn: deliveredOn,
    );
  }
}

/// @nodoc
const $OrderItem = _$OrderItemTearOff();

/// @nodoc
mixin _$OrderItem {
  UniqueId get id => throw _privateConstructorUsedError;
  ItemName get name => throw _privateConstructorUsedError;
  ImageURL get imageURL => throw _privateConstructorUsedError;
  double get rate => throw _privateConstructorUsedError;
  DateTime get deliveredOn => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderItemCopyWith<OrderItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderItemCopyWith<$Res> {
  factory $OrderItemCopyWith(OrderItem value, $Res Function(OrderItem) then) =
      _$OrderItemCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      ItemName name,
      ImageURL imageURL,
      double rate,
      DateTime deliveredOn});
}

/// @nodoc
class _$OrderItemCopyWithImpl<$Res> implements $OrderItemCopyWith<$Res> {
  _$OrderItemCopyWithImpl(this._value, this._then);

  final OrderItem _value;
  // ignore: unused_field
  final $Res Function(OrderItem) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? imageURL = freezed,
    Object? rate = freezed,
    Object? deliveredOn = freezed,
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
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
      deliveredOn: deliveredOn == freezed
          ? _value.deliveredOn
          : deliveredOn // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$ProductCopyWith<$Res> implements $OrderItemCopyWith<$Res> {
  factory _$ProductCopyWith(_Product value, $Res Function(_Product) then) =
      __$ProductCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      ItemName name,
      ImageURL imageURL,
      double rate,
      DateTime deliveredOn});
}

/// @nodoc
class __$ProductCopyWithImpl<$Res> extends _$OrderItemCopyWithImpl<$Res>
    implements _$ProductCopyWith<$Res> {
  __$ProductCopyWithImpl(_Product _value, $Res Function(_Product) _then)
      : super(_value, (v) => _then(v as _Product));

  @override
  _Product get _value => super._value as _Product;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? imageURL = freezed,
    Object? rate = freezed,
    Object? deliveredOn = freezed,
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
      imageURL: imageURL == freezed
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as ImageURL,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
      deliveredOn: deliveredOn == freezed
          ? _value.deliveredOn
          : deliveredOn // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_Product extends _Product {
  const _$_Product(
      {required this.id,
      required this.name,
      required this.imageURL,
      required this.rate,
      required this.deliveredOn})
      : super._();

  @override
  final UniqueId id;
  @override
  final ItemName name;
  @override
  final ImageURL imageURL;
  @override
  final double rate;
  @override
  final DateTime deliveredOn;

  @override
  String toString() {
    return 'OrderItem(id: $id, name: $name, imageURL: $imageURL, rate: $rate, deliveredOn: $deliveredOn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Product &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.imageURL, imageURL) &&
            const DeepCollectionEquality().equals(other.rate, rate) &&
            const DeepCollectionEquality()
                .equals(other.deliveredOn, deliveredOn));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(imageURL),
      const DeepCollectionEquality().hash(rate),
      const DeepCollectionEquality().hash(deliveredOn));

  @JsonKey(ignore: true)
  @override
  _$ProductCopyWith<_Product> get copyWith =>
      __$ProductCopyWithImpl<_Product>(this, _$identity);
}

abstract class _Product extends OrderItem {
  const factory _Product(
      {required UniqueId id,
      required ItemName name,
      required ImageURL imageURL,
      required double rate,
      required DateTime deliveredOn}) = _$_Product;
  const _Product._() : super._();

  @override
  UniqueId get id;
  @override
  ItemName get name;
  @override
  ImageURL get imageURL;
  @override
  double get rate;
  @override
  DateTime get deliveredOn;
  @override
  @JsonKey(ignore: true)
  _$ProductCopyWith<_Product> get copyWith =>
      throw _privateConstructorUsedError;
}
