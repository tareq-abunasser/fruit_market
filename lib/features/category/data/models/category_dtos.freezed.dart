// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'category_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryDTO _$CategoryDTOFromJson(Map<String, dynamic> json) {
  return _CategoryDTO.fromJson(json);
}

/// @nodoc
class _$CategoryDTOTearOff {
  const _$CategoryDTOTearOff();

  _CategoryDTO call(
      {@HiveField(0) @JsonKey(ignore: true) String? id,
      @HiveField(1) @JsonKey(name: 'name') required String name}) {
    return _CategoryDTO(
      id: id,
      name: name,
    );
  }

  CategoryDTO fromJson(Map<String, Object?> json) {
    return CategoryDTO.fromJson(json);
  }
}

/// @nodoc
const $CategoryDTO = _$CategoryDTOTearOff();

/// @nodoc
mixin _$CategoryDTO {
  @HiveField(0)
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryDTOCopyWith<CategoryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryDTOCopyWith<$Res> {
  factory $CategoryDTOCopyWith(
          CategoryDTO value, $Res Function(CategoryDTO) then) =
      _$CategoryDTOCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) @JsonKey(ignore: true) String? id,
      @HiveField(1) @JsonKey(name: 'name') String name});
}

/// @nodoc
class _$CategoryDTOCopyWithImpl<$Res> implements $CategoryDTOCopyWith<$Res> {
  _$CategoryDTOCopyWithImpl(this._value, this._then);

  final CategoryDTO _value;
  // ignore: unused_field
  final $Res Function(CategoryDTO) _then;

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
abstract class _$CategoryDTOCopyWith<$Res>
    implements $CategoryDTOCopyWith<$Res> {
  factory _$CategoryDTOCopyWith(
          _CategoryDTO value, $Res Function(_CategoryDTO) then) =
      __$CategoryDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) @JsonKey(ignore: true) String? id,
      @HiveField(1) @JsonKey(name: 'name') String name});
}

/// @nodoc
class __$CategoryDTOCopyWithImpl<$Res> extends _$CategoryDTOCopyWithImpl<$Res>
    implements _$CategoryDTOCopyWith<$Res> {
  __$CategoryDTOCopyWithImpl(
      _CategoryDTO _value, $Res Function(_CategoryDTO) _then)
      : super(_value, (v) => _then(v as _CategoryDTO));

  @override
  _CategoryDTO get _value => super._value as _CategoryDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_CategoryDTO(
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
@HiveType(typeId: 8, adapterName: 'CategoryDTOAdapter')
class _$_CategoryDTO extends _CategoryDTO {
  _$_CategoryDTO(
      {@HiveField(0) @JsonKey(ignore: true) this.id,
      @HiveField(1) @JsonKey(name: 'name') required this.name})
      : super._();

  factory _$_CategoryDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryDTOFromJson(json);

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
    return 'CategoryDTO(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CategoryDTO &&
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
  _$CategoryDTOCopyWith<_CategoryDTO> get copyWith =>
      __$CategoryDTOCopyWithImpl<_CategoryDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryDTOToJson(this);
  }
}

abstract class _CategoryDTO extends CategoryDTO {
  factory _CategoryDTO(
          {@HiveField(0) @JsonKey(ignore: true) String? id,
          @HiveField(1) @JsonKey(name: 'name') required String name}) =
      _$_CategoryDTO;
  _CategoryDTO._() : super._();

  factory _CategoryDTO.fromJson(Map<String, dynamic> json) =
      _$_CategoryDTO.fromJson;

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
  _$CategoryDTOCopyWith<_CategoryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
