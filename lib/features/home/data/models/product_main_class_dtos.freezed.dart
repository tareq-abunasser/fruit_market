// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_main_class_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductMainClassDTO _$ProductMainClassDTOFromJson(Map<String, dynamic> json) {
  return _ProductMainClassDTO.fromJson(json);
}

/// @nodoc
class _$ProductMainClassDTOTearOff {
  const _$ProductMainClassDTOTearOff();

  _ProductMainClassDTO call(
      {@HiveField(0) @JsonKey(ignore: true) String? id,
      @HiveField(1) @JsonKey(name: 'name') required String name}) {
    return _ProductMainClassDTO(
      id: id,
      name: name,
    );
  }

  ProductMainClassDTO fromJson(Map<String, Object?> json) {
    return ProductMainClassDTO.fromJson(json);
  }
}

/// @nodoc
const $ProductMainClassDTO = _$ProductMainClassDTOTearOff();

/// @nodoc
mixin _$ProductMainClassDTO {
  @HiveField(0)
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductMainClassDTOCopyWith<ProductMainClassDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductMainClassDTOCopyWith<$Res> {
  factory $ProductMainClassDTOCopyWith(
          ProductMainClassDTO value, $Res Function(ProductMainClassDTO) then) =
      _$ProductMainClassDTOCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) @JsonKey(ignore: true) String? id,
      @HiveField(1) @JsonKey(name: 'name') String name});
}

/// @nodoc
class _$ProductMainClassDTOCopyWithImpl<$Res>
    implements $ProductMainClassDTOCopyWith<$Res> {
  _$ProductMainClassDTOCopyWithImpl(this._value, this._then);

  final ProductMainClassDTO _value;
  // ignore: unused_field
  final $Res Function(ProductMainClassDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$ProductMainClassDTOCopyWith<$Res>
    implements $ProductMainClassDTOCopyWith<$Res> {
  factory _$ProductMainClassDTOCopyWith(_ProductMainClassDTO value,
          $Res Function(_ProductMainClassDTO) then) =
      __$ProductMainClassDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) @JsonKey(ignore: true) String? id,
      @HiveField(1) @JsonKey(name: 'name') String name});
}

/// @nodoc
class __$ProductMainClassDTOCopyWithImpl<$Res>
    extends _$ProductMainClassDTOCopyWithImpl<$Res>
    implements _$ProductMainClassDTOCopyWith<$Res> {
  __$ProductMainClassDTOCopyWithImpl(
      _ProductMainClassDTO _value, $Res Function(_ProductMainClassDTO) _then)
      : super(_value, (v) => _then(v as _ProductMainClassDTO));

  @override
  _ProductMainClassDTO get _value => super._value as _ProductMainClassDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_ProductMainClassDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 1, adapterName: 'ProductMainClassDTOAdapter')
class _$_ProductMainClassDTO extends _ProductMainClassDTO {
  _$_ProductMainClassDTO(
      {@HiveField(0) @JsonKey(ignore: true) this.id,
      @HiveField(1) @JsonKey(name: 'name') required this.name})
      : super._();

  factory _$_ProductMainClassDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ProductMainClassDTOFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(ignore: true)
  final String? id;
  @override
  @HiveField(1)
  @JsonKey(name: 'name')
  final String name;

  @override
  String toString() {
    return 'ProductMainClassDTO(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductMainClassDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$ProductMainClassDTOCopyWith<_ProductMainClassDTO> get copyWith =>
      __$ProductMainClassDTOCopyWithImpl<_ProductMainClassDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductMainClassDTOToJson(this);
  }
}

abstract class _ProductMainClassDTO extends ProductMainClassDTO {
  factory _ProductMainClassDTO(
          {@HiveField(0) @JsonKey(ignore: true) String? id,
          @HiveField(1) @JsonKey(name: 'name') required String name}) =
      _$_ProductMainClassDTO;
  _ProductMainClassDTO._() : super._();

  factory _ProductMainClassDTO.fromJson(Map<String, dynamic> json) =
      _$_ProductMainClassDTO.fromJson;

  @override
  @HiveField(0)
  @JsonKey(ignore: true)
  String? get id;
  @override
  @HiveField(1)
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$ProductMainClassDTOCopyWith<_ProductMainClassDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
