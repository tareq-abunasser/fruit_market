// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_item_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartItemDTO _$CartItemDTOFromJson(Map<String, dynamic> json) {
  return _CartItemDTO.fromJson(json);
}

/// @nodoc
class _$CartItemDTOTearOff {
  const _$CartItemDTOTearOff();

  _CartItemDTO call(
      {@HiveField(0) @JsonKey(ignore: true) String? id,
      @HiveField(1) required String name,
      @HiveField(3) required double price,
      @HiveField(4) required double discount,
      @HiveField(5) required String image,
      @HiveField(6) required int quantity}) {
    return _CartItemDTO(
      id: id,
      name: name,
      price: price,
      discount: discount,
      image: image,
      quantity: quantity,
    );
  }

  CartItemDTO fromJson(Map<String, Object?> json) {
    return CartItemDTO.fromJson(json);
  }
}

/// @nodoc
const $CartItemDTO = _$CartItemDTOTearOff();

/// @nodoc
mixin _$CartItemDTO {
  @HiveField(0)
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @HiveField(3)
  double get price => throw _privateConstructorUsedError;
  @HiveField(4)
  double get discount => throw _privateConstructorUsedError;
  @HiveField(5)
  String get image => throw _privateConstructorUsedError;
  @HiveField(6)
  int get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartItemDTOCopyWith<CartItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartItemDTOCopyWith<$Res> {
  factory $CartItemDTOCopyWith(
          CartItemDTO value, $Res Function(CartItemDTO) then) =
      _$CartItemDTOCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) @JsonKey(ignore: true) String? id,
      @HiveField(1) String name,
      @HiveField(3) double price,
      @HiveField(4) double discount,
      @HiveField(5) String image,
      @HiveField(6) int quantity});
}

/// @nodoc
class _$CartItemDTOCopyWithImpl<$Res> implements $CartItemDTOCopyWith<$Res> {
  _$CartItemDTOCopyWithImpl(this._value, this._then);

  final CartItemDTO _value;
  // ignore: unused_field
  final $Res Function(CartItemDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? discount = freezed,
    Object? image = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$CartItemDTOCopyWith<$Res>
    implements $CartItemDTOCopyWith<$Res> {
  factory _$CartItemDTOCopyWith(
          _CartItemDTO value, $Res Function(_CartItemDTO) then) =
      __$CartItemDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) @JsonKey(ignore: true) String? id,
      @HiveField(1) String name,
      @HiveField(3) double price,
      @HiveField(4) double discount,
      @HiveField(5) String image,
      @HiveField(6) int quantity});
}

/// @nodoc
class __$CartItemDTOCopyWithImpl<$Res> extends _$CartItemDTOCopyWithImpl<$Res>
    implements _$CartItemDTOCopyWith<$Res> {
  __$CartItemDTOCopyWithImpl(
      _CartItemDTO _value, $Res Function(_CartItemDTO) _then)
      : super(_value, (v) => _then(v as _CartItemDTO));

  @override
  _CartItemDTO get _value => super._value as _CartItemDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? discount = freezed,
    Object? image = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_CartItemDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 6, adapterName: 'CartItemDTOAdapter')
class _$_CartItemDTO extends _CartItemDTO {
  _$_CartItemDTO(
      {@HiveField(0) @JsonKey(ignore: true) this.id,
      @HiveField(1) required this.name,
      @HiveField(3) required this.price,
      @HiveField(4) required this.discount,
      @HiveField(5) required this.image,
      @HiveField(6) required this.quantity})
      : super._();

  factory _$_CartItemDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CartItemDTOFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(ignore: true)
  final String? id;
  @override
  @HiveField(1)
  final String name;
  @override
  @HiveField(3)
  final double price;
  @override
  @HiveField(4)
  final double discount;
  @override
  @HiveField(5)
  final String image;
  @override
  @HiveField(6)
  final int quantity;

  @override
  String toString() {
    return 'CartItemDTO(id: $id, name: $name, price: $price, discount: $discount, image: $image, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CartItemDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.discount, discount) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.quantity, quantity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(discount),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(quantity));

  @JsonKey(ignore: true)
  @override
  _$CartItemDTOCopyWith<_CartItemDTO> get copyWith =>
      __$CartItemDTOCopyWithImpl<_CartItemDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartItemDTOToJson(this);
  }
}

abstract class _CartItemDTO extends CartItemDTO {
  factory _CartItemDTO(
      {@HiveField(0) @JsonKey(ignore: true) String? id,
      @HiveField(1) required String name,
      @HiveField(3) required double price,
      @HiveField(4) required double discount,
      @HiveField(5) required String image,
      @HiveField(6) required int quantity}) = _$_CartItemDTO;
  _CartItemDTO._() : super._();

  factory _CartItemDTO.fromJson(Map<String, dynamic> json) =
      _$_CartItemDTO.fromJson;

  @override
  @HiveField(0)
  @JsonKey(ignore: true)
  String? get id;
  @override
  @HiveField(1)
  String get name;
  @override
  @HiveField(3)
  double get price;
  @override
  @HiveField(4)
  double get discount;
  @override
  @HiveField(5)
  String get image;
  @override
  @HiveField(6)
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$CartItemDTOCopyWith<_CartItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
