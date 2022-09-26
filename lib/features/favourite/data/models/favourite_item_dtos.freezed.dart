// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'favourite_item_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FavouriteItemDTO _$FavouriteItemDTOFromJson(Map<String, dynamic> json) {
  return _FavouriteItemDTO.fromJson(json);
}

/// @nodoc
class _$FavouriteItemDTOTearOff {
  const _$FavouriteItemDTOTearOff();

  _FavouriteItemDTO call(
      {@HiveField(0)
      @JsonKey(ignore: true)
          String? id,
      @HiveField(1)
      @JsonKey(name: 'product')
      @ProductConverter()
          required ProductDTO product}) {
    return _FavouriteItemDTO(
      id: id,
      product: product,
    );
  }

  FavouriteItemDTO fromJson(Map<String, Object?> json) {
    return FavouriteItemDTO.fromJson(json);
  }
}

/// @nodoc
const $FavouriteItemDTO = _$FavouriteItemDTOTearOff();

/// @nodoc
mixin _$FavouriteItemDTO {
  @HiveField(0)
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: 'product')
  @ProductConverter()
  ProductDTO get product => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavouriteItemDTOCopyWith<FavouriteItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouriteItemDTOCopyWith<$Res> {
  factory $FavouriteItemDTOCopyWith(
          FavouriteItemDTO value, $Res Function(FavouriteItemDTO) then) =
      _$FavouriteItemDTOCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0)
      @JsonKey(ignore: true)
          String? id,
      @HiveField(1)
      @JsonKey(name: 'product')
      @ProductConverter()
          ProductDTO product});

  $ProductDTOCopyWith<$Res> get product;
}

/// @nodoc
class _$FavouriteItemDTOCopyWithImpl<$Res>
    implements $FavouriteItemDTOCopyWith<$Res> {
  _$FavouriteItemDTOCopyWithImpl(this._value, this._then);

  final FavouriteItemDTO _value;
  // ignore: unused_field
  final $Res Function(FavouriteItemDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? product = freezed,
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
abstract class _$FavouriteItemDTOCopyWith<$Res>
    implements $FavouriteItemDTOCopyWith<$Res> {
  factory _$FavouriteItemDTOCopyWith(
          _FavouriteItemDTO value, $Res Function(_FavouriteItemDTO) then) =
      __$FavouriteItemDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0)
      @JsonKey(ignore: true)
          String? id,
      @HiveField(1)
      @JsonKey(name: 'product')
      @ProductConverter()
          ProductDTO product});

  @override
  $ProductDTOCopyWith<$Res> get product;
}

/// @nodoc
class __$FavouriteItemDTOCopyWithImpl<$Res>
    extends _$FavouriteItemDTOCopyWithImpl<$Res>
    implements _$FavouriteItemDTOCopyWith<$Res> {
  __$FavouriteItemDTOCopyWithImpl(
      _FavouriteItemDTO _value, $Res Function(_FavouriteItemDTO) _then)
      : super(_value, (v) => _then(v as _FavouriteItemDTO));

  @override
  _FavouriteItemDTO get _value => super._value as _FavouriteItemDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? product = freezed,
  }) {
    return _then(_FavouriteItemDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductDTO,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 5, adapterName: 'FavouriteItemDTOAdapter')
class _$_FavouriteItemDTO extends _FavouriteItemDTO {
  _$_FavouriteItemDTO(
      {@HiveField(0)
      @JsonKey(ignore: true)
          this.id,
      @HiveField(1)
      @JsonKey(name: 'product')
      @ProductConverter()
          required this.product})
      : super._();

  factory _$_FavouriteItemDTO.fromJson(Map<String, dynamic> json) =>
      _$$_FavouriteItemDTOFromJson(json);

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
  String toString() {
    return 'FavouriteItemDTO(id: $id, product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FavouriteItemDTO &&
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
  _$FavouriteItemDTOCopyWith<_FavouriteItemDTO> get copyWith =>
      __$FavouriteItemDTOCopyWithImpl<_FavouriteItemDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FavouriteItemDTOToJson(this);
  }
}

abstract class _FavouriteItemDTO extends FavouriteItemDTO {
  factory _FavouriteItemDTO(
      {@HiveField(0)
      @JsonKey(ignore: true)
          String? id,
      @HiveField(1)
      @JsonKey(name: 'product')
      @ProductConverter()
          required ProductDTO product}) = _$_FavouriteItemDTO;
  _FavouriteItemDTO._() : super._();

  factory _FavouriteItemDTO.fromJson(Map<String, dynamic> json) =
      _$_FavouriteItemDTO.fromJson;

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
  @JsonKey(ignore: true)
  _$FavouriteItemDTOCopyWith<_FavouriteItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
