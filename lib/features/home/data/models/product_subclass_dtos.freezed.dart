// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_subclass_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductSubclassDTO _$ProductSubclassDTOFromJson(Map<String, dynamic> json) {
  return _ProductSubclassDTO.fromJson(json);
}

/// @nodoc
class _$ProductSubclassDTOTearOff {
  const _$ProductSubclassDTOTearOff();

  _ProductSubclassDTO call(
      {@HiveField(0) @JsonKey(ignore: true) String? id,
      @HiveField(1) @JsonKey(name: 'name') required String name,
      @HiveField(2) @JsonKey(name: 'parent_id') required String parentId,
      @HiveField(3) @JsonKey(name: 'desc') required String desc,
      @HiveField(4) @JsonKey(name: 'discount') required double discount}) {
    return _ProductSubclassDTO(
      id: id,
      name: name,
      parentId: parentId,
      desc: desc,
      discount: discount,
    );
  }

  ProductSubclassDTO fromJson(Map<String, Object?> json) {
    return ProductSubclassDTO.fromJson(json);
  }
}

/// @nodoc
const $ProductSubclassDTO = _$ProductSubclassDTOTearOff();

/// @nodoc
mixin _$ProductSubclassDTO {
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
  @JsonKey(name: 'desc')
  String get desc => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: 'discount')
  double get discount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductSubclassDTOCopyWith<ProductSubclassDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductSubclassDTOCopyWith<$Res> {
  factory $ProductSubclassDTOCopyWith(
          ProductSubclassDTO value, $Res Function(ProductSubclassDTO) then) =
      _$ProductSubclassDTOCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) @JsonKey(ignore: true) String? id,
      @HiveField(1) @JsonKey(name: 'name') String name,
      @HiveField(2) @JsonKey(name: 'parent_id') String parentId,
      @HiveField(3) @JsonKey(name: 'desc') String desc,
      @HiveField(4) @JsonKey(name: 'discount') double discount});
}

/// @nodoc
class _$ProductSubclassDTOCopyWithImpl<$Res>
    implements $ProductSubclassDTOCopyWith<$Res> {
  _$ProductSubclassDTOCopyWithImpl(this._value, this._then);

  final ProductSubclassDTO _value;
  // ignore: unused_field
  final $Res Function(ProductSubclassDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? parentId = freezed,
    Object? desc = freezed,
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
      desc: desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$ProductSubclassDTOCopyWith<$Res>
    implements $ProductSubclassDTOCopyWith<$Res> {
  factory _$ProductSubclassDTOCopyWith(
          _ProductSubclassDTO value, $Res Function(_ProductSubclassDTO) then) =
      __$ProductSubclassDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) @JsonKey(ignore: true) String? id,
      @HiveField(1) @JsonKey(name: 'name') String name,
      @HiveField(2) @JsonKey(name: 'parent_id') String parentId,
      @HiveField(3) @JsonKey(name: 'desc') String desc,
      @HiveField(4) @JsonKey(name: 'discount') double discount});
}

/// @nodoc
class __$ProductSubclassDTOCopyWithImpl<$Res>
    extends _$ProductSubclassDTOCopyWithImpl<$Res>
    implements _$ProductSubclassDTOCopyWith<$Res> {
  __$ProductSubclassDTOCopyWithImpl(
      _ProductSubclassDTO _value, $Res Function(_ProductSubclassDTO) _then)
      : super(_value, (v) => _then(v as _ProductSubclassDTO));

  @override
  _ProductSubclassDTO get _value => super._value as _ProductSubclassDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? parentId = freezed,
    Object? desc = freezed,
    Object? discount = freezed,
  }) {
    return _then(_ProductSubclassDTO(
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
      desc: desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
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
@HiveType(typeId: 2, adapterName: 'ProductSubclassDTOAdapter')
class _$_ProductSubclassDTO extends _ProductSubclassDTO {
  _$_ProductSubclassDTO(
      {@HiveField(0) @JsonKey(ignore: true) this.id,
      @HiveField(1) @JsonKey(name: 'name') required this.name,
      @HiveField(2) @JsonKey(name: 'parent_id') required this.parentId,
      @HiveField(3) @JsonKey(name: 'desc') required this.desc,
      @HiveField(4) @JsonKey(name: 'discount') required this.discount})
      : super._();

  factory _$_ProductSubclassDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ProductSubclassDTOFromJson(json);

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
  @JsonKey(name: 'desc')
  final String desc;
  @override
  @HiveField(4)
  @JsonKey(name: 'discount')
  final double discount;

  @override
  String toString() {
    return 'ProductSubclassDTO(id: $id, name: $name, parentId: $parentId, desc: $desc, discount: $discount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductSubclassDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.parentId, parentId) &&
            const DeepCollectionEquality().equals(other.desc, desc) &&
            const DeepCollectionEquality().equals(other.discount, discount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(parentId),
      const DeepCollectionEquality().hash(desc),
      const DeepCollectionEquality().hash(discount));

  @JsonKey(ignore: true)
  @override
  _$ProductSubclassDTOCopyWith<_ProductSubclassDTO> get copyWith =>
      __$ProductSubclassDTOCopyWithImpl<_ProductSubclassDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductSubclassDTOToJson(this);
  }
}

abstract class _ProductSubclassDTO extends ProductSubclassDTO {
  factory _ProductSubclassDTO(
          {@HiveField(0) @JsonKey(ignore: true) String? id,
          @HiveField(1) @JsonKey(name: 'name') required String name,
          @HiveField(2) @JsonKey(name: 'parent_id') required String parentId,
          @HiveField(3) @JsonKey(name: 'desc') required String desc,
          @HiveField(4) @JsonKey(name: 'discount') required double discount}) =
      _$_ProductSubclassDTO;
  _ProductSubclassDTO._() : super._();

  factory _ProductSubclassDTO.fromJson(Map<String, dynamic> json) =
      _$_ProductSubclassDTO.fromJson;

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
  @JsonKey(name: 'desc')
  String get desc;
  @override
  @HiveField(4)
  @JsonKey(name: 'discount')
  double get discount;
  @override
  @JsonKey(ignore: true)
  _$ProductSubclassDTOCopyWith<_ProductSubclassDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
