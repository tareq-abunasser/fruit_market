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
      {@HiveField(0)
      @JsonKey(ignore: true)
          String? id,
      @HiveField(1)
      @JsonKey(name: 'product')
      @ProductConverter()
          required ProductDTO product,
      @HiveField(2)
          required int quantity}) {
    return _CartItemDTO(
      id: id,
      product: product,
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
  @JsonKey(name: 'product')
  @ProductConverter()
  ProductDTO get product => throw _privateConstructorUsedError;
  @HiveField(2)
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
      {@HiveField(0)
      @JsonKey(ignore: true)
          String? id,
      @HiveField(1)
      @JsonKey(name: 'product')
      @ProductConverter()
          ProductDTO product,
      @HiveField(2)
          int quantity});

  $ProductDTOCopyWith<$Res> get product;
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
    Object? product = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductDTO,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $ProductDTOCopyWith<$Res> get product {
    return $ProductDTOCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
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
      {@HiveField(0)
      @JsonKey(ignore: true)
          String? id,
      @HiveField(1)
      @JsonKey(name: 'product')
      @ProductConverter()
          ProductDTO product,
      @HiveField(2)
          int quantity});

  @override
  $ProductDTOCopyWith<$Res> get product;
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
    Object? product = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_CartItemDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductDTO,
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
      {@HiveField(0)
      @JsonKey(ignore: true)
          this.id,
      @HiveField(1)
      @JsonKey(name: 'product')
      @ProductConverter()
          required this.product,
      @HiveField(2)
          required this.quantity})
      : super._();

  factory _$_CartItemDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CartItemDTOFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(ignore: true)
  final String? id;
  @override
  @HiveField(1)
  @JsonKey(name: 'product')
  @ProductConverter()
  final ProductDTO product;
  @override
  @HiveField(2)
  final int quantity;

  @override
  String toString() {
    return 'CartItemDTO(id: $id, product: $product, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CartItemDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.product, product) &&
            const DeepCollectionEquality().equals(other.quantity, quantity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(product),
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
      {@HiveField(0)
      @JsonKey(ignore: true)
          String? id,
      @HiveField(1)
      @JsonKey(name: 'product')
      @ProductConverter()
          required ProductDTO product,
      @HiveField(2)
          required int quantity}) = _$_CartItemDTO;
  _CartItemDTO._() : super._();

  factory _CartItemDTO.fromJson(Map<String, dynamic> json) =
      _$_CartItemDTO.fromJson;

  @override
  @HiveField(0)
  @JsonKey(ignore: true)
  String? get id;
  @override
  @HiveField(1)
  @JsonKey(name: 'product')
  @ProductConverter()
  ProductDTO get product;
  @override
  @HiveField(2)
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$CartItemDTOCopyWith<_CartItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
