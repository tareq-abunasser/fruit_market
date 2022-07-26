// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductDTO _$ProductDTOFromJson(Map<String, dynamic> json) {
  return _ProductDTO.fromJson(json);
}

/// @nodoc
class _$ProductDTOTearOff {
  const _$ProductDTOTearOff();

  _ProductDTO call(
      {@HiveField(0)
      @JsonKey(ignore: true)
          String? id,
      @HiveField(1)
      @JsonKey(name: 'name')
          required String name,
      @HiveField(2)
      @JsonKey(name: 'parent_id')
          required String parentId,
      @HiveField(3)
      @JsonKey(name: 'price')
          required double price,
      @HiveField(4)
      @JsonKey(name: 'imageurl')
          required String image,
      @HiveField(5)
      @JsonKey(name: 'likes')
          required List<dynamic> likes,
      @HiveField(6)
      @JsonKey(name: 'rate')
          required Map<String, double> rate,
      @HiveField(7)
      @JsonKey(name: 'Nutrition')
          required Map<String, double> nutrition,
      @HiveField(8)
      @JsonKey(name: 'benefit')
          required String benefit,
      @HiveField(9)
      @JsonKey(name: 'discount')
          required double discount}) {
    return _ProductDTO(
      id: id,
      name: name,
      parentId: parentId,
      price: price,
      image: image,
      likes: likes,
      rate: rate,
      nutrition: nutrition,
      benefit: benefit,
      discount: discount,
    );
  }

  ProductDTO fromJson(Map<String, Object?> json) {
    return ProductDTO.fromJson(json);
  }
}

/// @nodoc
const $ProductDTO = _$ProductDTOTearOff();

/// @nodoc
mixin _$ProductDTO {
  @HiveField(0)
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: 'parent_id')
  String get parentId => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: 'price')
  double get price => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: 'imageurl')
  String get image => throw _privateConstructorUsedError;
  @HiveField(5)
  @JsonKey(name: 'likes')
  List<dynamic> get likes => throw _privateConstructorUsedError;
  @HiveField(6)
  @JsonKey(name: 'rate')
  Map<String, double> get rate => throw _privateConstructorUsedError;
  @HiveField(7)
  @JsonKey(name: 'Nutrition')
  Map<String, double> get nutrition => throw _privateConstructorUsedError;
  @HiveField(8)
  @JsonKey(name: 'benefit')
  String get benefit => throw _privateConstructorUsedError;
  @HiveField(9)
  @JsonKey(name: 'discount')
  double get discount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDTOCopyWith<ProductDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDTOCopyWith<$Res> {
  factory $ProductDTOCopyWith(
          ProductDTO value, $Res Function(ProductDTO) then) =
      _$ProductDTOCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) @JsonKey(ignore: true) String? id,
      @HiveField(1) @JsonKey(name: 'name') String name,
      @HiveField(2) @JsonKey(name: 'parent_id') String parentId,
      @HiveField(3) @JsonKey(name: 'price') double price,
      @HiveField(4) @JsonKey(name: 'imageurl') String image,
      @HiveField(5) @JsonKey(name: 'likes') List<dynamic> likes,
      @HiveField(6) @JsonKey(name: 'rate') Map<String, double> rate,
      @HiveField(7) @JsonKey(name: 'Nutrition') Map<String, double> nutrition,
      @HiveField(8) @JsonKey(name: 'benefit') String benefit,
      @HiveField(9) @JsonKey(name: 'discount') double discount});
}

/// @nodoc
class _$ProductDTOCopyWithImpl<$Res> implements $ProductDTOCopyWith<$Res> {
  _$ProductDTOCopyWithImpl(this._value, this._then);

  final ProductDTO _value;
  // ignore: unused_field
  final $Res Function(ProductDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? parentId = freezed,
    Object? price = freezed,
    Object? image = freezed,
    Object? likes = freezed,
    Object? rate = freezed,
    Object? nutrition = freezed,
    Object? benefit = freezed,
    Object? discount = freezed,
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
      parentId: parentId == freezed
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      nutrition: nutrition == freezed
          ? _value.nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      benefit: benefit == freezed
          ? _value.benefit
          : benefit // ignore: cast_nullable_to_non_nullable
              as String,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$ProductDTOCopyWith<$Res> implements $ProductDTOCopyWith<$Res> {
  factory _$ProductDTOCopyWith(
          _ProductDTO value, $Res Function(_ProductDTO) then) =
      __$ProductDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) @JsonKey(ignore: true) String? id,
      @HiveField(1) @JsonKey(name: 'name') String name,
      @HiveField(2) @JsonKey(name: 'parent_id') String parentId,
      @HiveField(3) @JsonKey(name: 'price') double price,
      @HiveField(4) @JsonKey(name: 'imageurl') String image,
      @HiveField(5) @JsonKey(name: 'likes') List<dynamic> likes,
      @HiveField(6) @JsonKey(name: 'rate') Map<String, double> rate,
      @HiveField(7) @JsonKey(name: 'Nutrition') Map<String, double> nutrition,
      @HiveField(8) @JsonKey(name: 'benefit') String benefit,
      @HiveField(9) @JsonKey(name: 'discount') double discount});
}

/// @nodoc
class __$ProductDTOCopyWithImpl<$Res> extends _$ProductDTOCopyWithImpl<$Res>
    implements _$ProductDTOCopyWith<$Res> {
  __$ProductDTOCopyWithImpl(
      _ProductDTO _value, $Res Function(_ProductDTO) _then)
      : super(_value, (v) => _then(v as _ProductDTO));

  @override
  _ProductDTO get _value => super._value as _ProductDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? parentId = freezed,
    Object? price = freezed,
    Object? image = freezed,
    Object? likes = freezed,
    Object? rate = freezed,
    Object? nutrition = freezed,
    Object? benefit = freezed,
    Object? discount = freezed,
  }) {
    return _then(_ProductDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: parentId == freezed
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      nutrition: nutrition == freezed
          ? _value.nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      benefit: benefit == freezed
          ? _value.benefit
          : benefit // ignore: cast_nullable_to_non_nullable
              as String,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 3, adapterName: 'ProductDTOAdapter')
class _$_ProductDTO extends _ProductDTO {
  _$_ProductDTO(
      {@HiveField(0) @JsonKey(ignore: true) this.id,
      @HiveField(1) @JsonKey(name: 'name') required this.name,
      @HiveField(2) @JsonKey(name: 'parent_id') required this.parentId,
      @HiveField(3) @JsonKey(name: 'price') required this.price,
      @HiveField(4) @JsonKey(name: 'imageurl') required this.image,
      @HiveField(5) @JsonKey(name: 'likes') required this.likes,
      @HiveField(6) @JsonKey(name: 'rate') required this.rate,
      @HiveField(7) @JsonKey(name: 'Nutrition') required this.nutrition,
      @HiveField(8) @JsonKey(name: 'benefit') required this.benefit,
      @HiveField(9) @JsonKey(name: 'discount') required this.discount})
      : super._();

  factory _$_ProductDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ProductDTOFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(ignore: true)
  final String? id;
  @override
  @HiveField(1)
  @JsonKey(name: 'name')
  final String name;
  @override
  @HiveField(2)
  @JsonKey(name: 'parent_id')
  final String parentId;
  @override
  @HiveField(3)
  @JsonKey(name: 'price')
  final double price;
  @override
  @HiveField(4)
  @JsonKey(name: 'imageurl')
  final String image;
  @override
  @HiveField(5)
  @JsonKey(name: 'likes')
  final List<dynamic> likes;
  @override
  @HiveField(6)
  @JsonKey(name: 'rate')
  final Map<String, double> rate;
  @override
  @HiveField(7)
  @JsonKey(name: 'Nutrition')
  final Map<String, double> nutrition;
  @override
  @HiveField(8)
  @JsonKey(name: 'benefit')
  final String benefit;
  @override
  @HiveField(9)
  @JsonKey(name: 'discount')
  final double discount;

  @override
  String toString() {
    return 'ProductDTO(id: $id, name: $name, parentId: $parentId, price: $price, image: $image, likes: $likes, rate: $rate, nutrition: $nutrition, benefit: $benefit, discount: $discount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.parentId, parentId) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.likes, likes) &&
            const DeepCollectionEquality().equals(other.rate, rate) &&
            const DeepCollectionEquality().equals(other.nutrition, nutrition) &&
            const DeepCollectionEquality().equals(other.benefit, benefit) &&
            const DeepCollectionEquality().equals(other.discount, discount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(parentId),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(likes),
      const DeepCollectionEquality().hash(rate),
      const DeepCollectionEquality().hash(nutrition),
      const DeepCollectionEquality().hash(benefit),
      const DeepCollectionEquality().hash(discount));

  @JsonKey(ignore: true)
  @override
  _$ProductDTOCopyWith<_ProductDTO> get copyWith =>
      __$ProductDTOCopyWithImpl<_ProductDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductDTOToJson(this);
  }
}

abstract class _ProductDTO extends ProductDTO {
  factory _ProductDTO(
      {@HiveField(0)
      @JsonKey(ignore: true)
          String? id,
      @HiveField(1)
      @JsonKey(name: 'name')
          required String name,
      @HiveField(2)
      @JsonKey(name: 'parent_id')
          required String parentId,
      @HiveField(3)
      @JsonKey(name: 'price')
          required double price,
      @HiveField(4)
      @JsonKey(name: 'imageurl')
          required String image,
      @HiveField(5)
      @JsonKey(name: 'likes')
          required List<dynamic> likes,
      @HiveField(6)
      @JsonKey(name: 'rate')
          required Map<String, double> rate,
      @HiveField(7)
      @JsonKey(name: 'Nutrition')
          required Map<String, double> nutrition,
      @HiveField(8)
      @JsonKey(name: 'benefit')
          required String benefit,
      @HiveField(9)
      @JsonKey(name: 'discount')
          required double discount}) = _$_ProductDTO;
  _ProductDTO._() : super._();

  factory _ProductDTO.fromJson(Map<String, dynamic> json) =
      _$_ProductDTO.fromJson;

  @override
  @HiveField(0)
  @JsonKey(ignore: true)
  String? get id;
  @override
  @HiveField(1)
  @JsonKey(name: 'name')
  String get name;
  @override
  @HiveField(2)
  @JsonKey(name: 'parent_id')
  String get parentId;
  @override
  @HiveField(3)
  @JsonKey(name: 'price')
  double get price;
  @override
  @HiveField(4)
  @JsonKey(name: 'imageurl')
  String get image;
  @override
  @HiveField(5)
  @JsonKey(name: 'likes')
  List<dynamic> get likes;
  @override
  @HiveField(6)
  @JsonKey(name: 'rate')
  Map<String, double> get rate;
  @override
  @HiveField(7)
  @JsonKey(name: 'Nutrition')
  Map<String, double> get nutrition;
  @override
  @HiveField(8)
  @JsonKey(name: 'benefit')
  String get benefit;
  @override
  @HiveField(9)
  @JsonKey(name: 'discount')
  double get discount;
  @override
  @JsonKey(ignore: true)
  _$ProductDTOCopyWith<_ProductDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
