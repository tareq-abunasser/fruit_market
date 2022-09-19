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

  _OrderItem call(
      {required UniqueId id,
      required CartItem cartItem,
      required DateTime orderAt,
      required double rate}) {
    return _OrderItem(
      id: id,
      cartItem: cartItem,
      orderAt: orderAt,
      rate: rate,
    );
  }
}

/// @nodoc
const $OrderItem = _$OrderItemTearOff();

/// @nodoc
mixin _$OrderItem {
  UniqueId get id => throw _privateConstructorUsedError;
  CartItem get cartItem => throw _privateConstructorUsedError;
  DateTime get orderAt => throw _privateConstructorUsedError;
  double get rate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderItemCopyWith<OrderItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderItemCopyWith<$Res> {
  factory $OrderItemCopyWith(OrderItem value, $Res Function(OrderItem) then) =
      _$OrderItemCopyWithImpl<$Res>;
  $Res call({UniqueId id, CartItem cartItem, DateTime orderAt, double rate});

  $CartItemCopyWith<$Res> get cartItem;
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
    Object? cartItem = freezed,
    Object? orderAt = freezed,
    Object? rate = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      cartItem: cartItem == freezed
          ? _value.cartItem
          : cartItem // ignore: cast_nullable_to_non_nullable
              as CartItem,
      orderAt: orderAt == freezed
          ? _value.orderAt
          : orderAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }

  @override
  $CartItemCopyWith<$Res> get cartItem {
    return $CartItemCopyWith<$Res>(_value.cartItem, (value) {
      return _then(_value.copyWith(cartItem: value));
    });
  }
}

/// @nodoc
abstract class _$OrderItemCopyWith<$Res> implements $OrderItemCopyWith<$Res> {
  factory _$OrderItemCopyWith(
          _OrderItem value, $Res Function(_OrderItem) then) =
      __$OrderItemCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, CartItem cartItem, DateTime orderAt, double rate});

  @override
  $CartItemCopyWith<$Res> get cartItem;
}

/// @nodoc
class __$OrderItemCopyWithImpl<$Res> extends _$OrderItemCopyWithImpl<$Res>
    implements _$OrderItemCopyWith<$Res> {
  __$OrderItemCopyWithImpl(_OrderItem _value, $Res Function(_OrderItem) _then)
      : super(_value, (v) => _then(v as _OrderItem));

  @override
  _OrderItem get _value => super._value as _OrderItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? cartItem = freezed,
    Object? orderAt = freezed,
    Object? rate = freezed,
  }) {
    return _then(_OrderItem(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      cartItem: cartItem == freezed
          ? _value.cartItem
          : cartItem // ignore: cast_nullable_to_non_nullable
              as CartItem,
      orderAt: orderAt == freezed
          ? _value.orderAt
          : orderAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_OrderItem extends _OrderItem {
  const _$_OrderItem(
      {required this.id,
      required this.cartItem,
      required this.orderAt,
      required this.rate})
      : super._();

  @override
  final UniqueId id;
  @override
  final CartItem cartItem;
  @override
  final DateTime orderAt;
  @override
  final double rate;

  @override
  String toString() {
    return 'OrderItem(id: $id, cartItem: $cartItem, orderAt: $orderAt, rate: $rate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderItem &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.cartItem, cartItem) &&
            const DeepCollectionEquality().equals(other.orderAt, orderAt) &&
            const DeepCollectionEquality().equals(other.rate, rate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(cartItem),
      const DeepCollectionEquality().hash(orderAt),
      const DeepCollectionEquality().hash(rate));

  @JsonKey(ignore: true)
  @override
  _$OrderItemCopyWith<_OrderItem> get copyWith =>
      __$OrderItemCopyWithImpl<_OrderItem>(this, _$identity);
}

abstract class _OrderItem extends OrderItem {
  const factory _OrderItem(
      {required UniqueId id,
      required CartItem cartItem,
      required DateTime orderAt,
      required double rate}) = _$_OrderItem;
  const _OrderItem._() : super._();

  @override
  UniqueId get id;
  @override
  CartItem get cartItem;
  @override
  DateTime get orderAt;
  @override
  double get rate;
  @override
  @JsonKey(ignore: true)
  _$OrderItemCopyWith<_OrderItem> get copyWith =>
      throw _privateConstructorUsedError;
}
