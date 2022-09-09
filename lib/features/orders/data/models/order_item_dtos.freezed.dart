// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_item_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderItemDTO _$OrderItemDTOFromJson(Map<String, dynamic> json) {
  return _OrderItemDTO.fromJson(json);
}

/// @nodoc
class _$OrderItemDTOTearOff {
  const _$OrderItemDTOTearOff();

  _OrderItemDTO call(
      {@HiveField(0)
      @JsonKey(ignore: true)
          String? id,
      @HiveField(1)
      @JsonKey(name: 'name')
          required String name,
      @HiveField(2)
      @JsonKey(name: 'imageurl')
          required String image,
      @HiveField(3)
      @JsonKey(name: 'delivered_on')
      @TimestampConverter()
          required Timestamp deliveredOn,
      @HiveField(4)
      @JsonKey(name: 'rate')
          required double rate}) {
    return _OrderItemDTO(
      id: id,
      name: name,
      image: image,
      deliveredOn: deliveredOn,
      rate: rate,
    );
  }

  OrderItemDTO fromJson(Map<String, Object?> json) {
    return OrderItemDTO.fromJson(json);
  }
}

/// @nodoc
const $OrderItemDTO = _$OrderItemDTOTearOff();

/// @nodoc
mixin _$OrderItemDTO {
  @HiveField(0)
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: 'imageurl')
  String get image => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: 'delivered_on')
  @TimestampConverter()
  Timestamp get deliveredOn => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: 'rate')
  double get rate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderItemDTOCopyWith<OrderItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderItemDTOCopyWith<$Res> {
  factory $OrderItemDTOCopyWith(
          OrderItemDTO value, $Res Function(OrderItemDTO) then) =
      _$OrderItemDTOCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0)
      @JsonKey(ignore: true)
          String? id,
      @HiveField(1)
      @JsonKey(name: 'name')
          String name,
      @HiveField(2)
      @JsonKey(name: 'imageurl')
          String image,
      @HiveField(3)
      @JsonKey(name: 'delivered_on')
      @TimestampConverter()
          Timestamp deliveredOn,
      @HiveField(4)
      @JsonKey(name: 'rate')
          double rate});
}

/// @nodoc
class _$OrderItemDTOCopyWithImpl<$Res> implements $OrderItemDTOCopyWith<$Res> {
  _$OrderItemDTOCopyWithImpl(this._value, this._then);

  final OrderItemDTO _value;
  // ignore: unused_field
  final $Res Function(OrderItemDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? deliveredOn = freezed,
    Object? rate = freezed,
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
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      deliveredOn: deliveredOn == freezed
          ? _value.deliveredOn
          : deliveredOn // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$OrderItemDTOCopyWith<$Res>
    implements $OrderItemDTOCopyWith<$Res> {
  factory _$OrderItemDTOCopyWith(
          _OrderItemDTO value, $Res Function(_OrderItemDTO) then) =
      __$OrderItemDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0)
      @JsonKey(ignore: true)
          String? id,
      @HiveField(1)
      @JsonKey(name: 'name')
          String name,
      @HiveField(2)
      @JsonKey(name: 'imageurl')
          String image,
      @HiveField(3)
      @JsonKey(name: 'delivered_on')
      @TimestampConverter()
          Timestamp deliveredOn,
      @HiveField(4)
      @JsonKey(name: 'rate')
          double rate});
}

/// @nodoc
class __$OrderItemDTOCopyWithImpl<$Res> extends _$OrderItemDTOCopyWithImpl<$Res>
    implements _$OrderItemDTOCopyWith<$Res> {
  __$OrderItemDTOCopyWithImpl(
      _OrderItemDTO _value, $Res Function(_OrderItemDTO) _then)
      : super(_value, (v) => _then(v as _OrderItemDTO));

  @override
  _OrderItemDTO get _value => super._value as _OrderItemDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? deliveredOn = freezed,
    Object? rate = freezed,
  }) {
    return _then(_OrderItemDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      deliveredOn: deliveredOn == freezed
          ? _value.deliveredOn
          : deliveredOn // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 7, adapterName: 'OrderItemDTOAdapter')
class _$_OrderItemDTO extends _OrderItemDTO {
  _$_OrderItemDTO(
      {@HiveField(0)
      @JsonKey(ignore: true)
          this.id,
      @HiveField(1)
      @JsonKey(name: 'name')
          required this.name,
      @HiveField(2)
      @JsonKey(name: 'imageurl')
          required this.image,
      @HiveField(3)
      @JsonKey(name: 'delivered_on')
      @TimestampConverter()
          required this.deliveredOn,
      @HiveField(4)
      @JsonKey(name: 'rate')
          required this.rate})
      : super._();

  factory _$_OrderItemDTO.fromJson(Map<String, dynamic> json) =>
      _$$_OrderItemDTOFromJson(json);

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
  @JsonKey(name: 'imageurl')
  final String image;
  @override
  @HiveField(3)
  @JsonKey(name: 'delivered_on')
  @TimestampConverter()
  final Timestamp deliveredOn;
  @override
  @HiveField(4)
  @JsonKey(name: 'rate')
  final double rate;

  @override
  String toString() {
    return 'OrderItemDTO(id: $id, name: $name, image: $image, deliveredOn: $deliveredOn, rate: $rate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderItemDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality()
                .equals(other.deliveredOn, deliveredOn) &&
            const DeepCollectionEquality().equals(other.rate, rate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(deliveredOn),
      const DeepCollectionEquality().hash(rate));

  @JsonKey(ignore: true)
  @override
  _$OrderItemDTOCopyWith<_OrderItemDTO> get copyWith =>
      __$OrderItemDTOCopyWithImpl<_OrderItemDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderItemDTOToJson(this);
  }
}

abstract class _OrderItemDTO extends OrderItemDTO {
  factory _OrderItemDTO(
      {@HiveField(0)
      @JsonKey(ignore: true)
          String? id,
      @HiveField(1)
      @JsonKey(name: 'name')
          required String name,
      @HiveField(2)
      @JsonKey(name: 'imageurl')
          required String image,
      @HiveField(3)
      @JsonKey(name: 'delivered_on')
      @TimestampConverter()
          required Timestamp deliveredOn,
      @HiveField(4)
      @JsonKey(name: 'rate')
          required double rate}) = _$_OrderItemDTO;
  _OrderItemDTO._() : super._();

  factory _OrderItemDTO.fromJson(Map<String, dynamic> json) =
      _$_OrderItemDTO.fromJson;

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
  @JsonKey(name: 'imageurl')
  String get image;
  @override
  @HiveField(3)
  @JsonKey(name: 'delivered_on')
  @TimestampConverter()
  Timestamp get deliveredOn;
  @override
  @HiveField(4)
  @JsonKey(name: 'rate')
  double get rate;
  @override
  @JsonKey(ignore: true)
  _$OrderItemDTOCopyWith<_OrderItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
