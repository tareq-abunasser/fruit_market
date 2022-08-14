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
      {@HiveField(0) @JsonKey(ignore: true) String? id,
      @HiveField(1) @JsonKey(name: 'name') required String name,
      @HiveField(3) @JsonKey(name: 'price') required double price,
      @HiveField(4) @JsonKey(name: 'imageurl') required String image,
      @HiveField(6) @JsonKey(name: 'rate') required Map<String, double> rate,
      @HiveField(9) @JsonKey(name: 'discount') required double discount}) {
    return _FavouriteItemDTO(
      id: id,
      name: name,
      price: price,
      image: image,
      rate: rate,
      discount: discount,
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
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: 'price')
  double get price => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: 'imageurl')
  String get image => throw _privateConstructorUsedError;
  @HiveField(6)
  @JsonKey(name: 'rate')
  Map<String, double> get rate => throw _privateConstructorUsedError;
  @HiveField(9)
  @JsonKey(name: 'discount')
  double get discount => throw _privateConstructorUsedError;

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
      {@HiveField(0) @JsonKey(ignore: true) String? id,
      @HiveField(1) @JsonKey(name: 'name') String name,
      @HiveField(3) @JsonKey(name: 'price') double price,
      @HiveField(4) @JsonKey(name: 'imageurl') String image,
      @HiveField(6) @JsonKey(name: 'rate') Map<String, double> rate,
      @HiveField(9) @JsonKey(name: 'discount') double discount});
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
    Object? name = freezed,
    Object? price = freezed,
    Object? image = freezed,
    Object? rate = freezed,
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
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
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
      {@HiveField(0) @JsonKey(ignore: true) String? id,
      @HiveField(1) @JsonKey(name: 'name') String name,
      @HiveField(3) @JsonKey(name: 'price') double price,
      @HiveField(4) @JsonKey(name: 'imageurl') String image,
      @HiveField(6) @JsonKey(name: 'rate') Map<String, double> rate,
      @HiveField(9) @JsonKey(name: 'discount') double discount});
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
    Object? name = freezed,
    Object? price = freezed,
    Object? image = freezed,
    Object? rate = freezed,
    Object? discount = freezed,
  }) {
    return _then(_FavouriteItemDTO(
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
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 5, adapterName: 'FavouriteItemDTOAdapter')
class _$_FavouriteItemDTO extends _FavouriteItemDTO {
  _$_FavouriteItemDTO(
      {@HiveField(0) @JsonKey(ignore: true) this.id,
      @HiveField(1) @JsonKey(name: 'name') required this.name,
      @HiveField(3) @JsonKey(name: 'price') required this.price,
      @HiveField(4) @JsonKey(name: 'imageurl') required this.image,
      @HiveField(6) @JsonKey(name: 'rate') required this.rate,
      @HiveField(9) @JsonKey(name: 'discount') required this.discount})
      : super._();

  factory _$_FavouriteItemDTO.fromJson(Map<String, dynamic> json) =>
      _$$_FavouriteItemDTOFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(ignore: true)
  final String? id;
  @override
  @HiveField(1)
  @JsonKey(name: 'name')
  final String name;
  @override
  @HiveField(3)
  @JsonKey(name: 'price')
  final double price;
  @override
  @HiveField(4)
  @JsonKey(name: 'imageurl')
  final String image;
  @override
  @HiveField(6)
  @JsonKey(name: 'rate')
  final Map<String, double> rate;
  @override
  @HiveField(9)
  @JsonKey(name: 'discount')
  final double discount;

  @override
  String toString() {
    return 'FavouriteItemDTO(id: $id, name: $name, price: $price, image: $image, rate: $rate, discount: $discount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FavouriteItemDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.rate, rate) &&
            const DeepCollectionEquality().equals(other.discount, discount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(rate),
      const DeepCollectionEquality().hash(discount));

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
      @JsonKey(name: 'name')
          required String name,
      @HiveField(3)
      @JsonKey(name: 'price')
          required double price,
      @HiveField(4)
      @JsonKey(name: 'imageurl')
          required String image,
      @HiveField(6)
      @JsonKey(name: 'rate')
          required Map<String, double> rate,
      @HiveField(9)
      @JsonKey(name: 'discount')
          required double discount}) = _$_FavouriteItemDTO;
  _FavouriteItemDTO._() : super._();

  factory _FavouriteItemDTO.fromJson(Map<String, dynamic> json) =
      _$_FavouriteItemDTO.fromJson;

  @override
  @HiveField(0)
  @JsonKey(ignore: true)
  String? get id;
  @override
  @HiveField(1)
  @JsonKey(name: 'name')
  String get name;
  @override
  @HiveField(3)
  @JsonKey(name: 'price')
  double get price;
  @override
  @HiveField(4)
  @JsonKey(name: 'imageurl')
  String get image;
  @override
  @HiveField(6)
  @JsonKey(name: 'rate')
  Map<String, double> get rate;
  @override
  @HiveField(9)
  @JsonKey(name: 'discount')
  double get discount;
  @override
  @JsonKey(ignore: true)
  _$FavouriteItemDTOCopyWith<_FavouriteItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
