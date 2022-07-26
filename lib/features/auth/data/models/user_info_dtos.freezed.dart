// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_info_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserInfoDTO _$UserInfoDTOFromJson(Map<String, dynamic> json) {
  return _UserInfoDTO.fromJson(json);
}

/// @nodoc
class _$UserInfoDTOTearOff {
  const _$UserInfoDTOTearOff();

  _UserInfoDTO call(
      {required String id,
      @JsonKey(name: 'name') required String fullName,
      @JsonKey(name: 'phone') required int phoneNumber,
      @JsonKey(name: 'address') required String address}) {
    return _UserInfoDTO(
      id: id,
      fullName: fullName,
      phoneNumber: phoneNumber,
      address: address,
    );
  }

  UserInfoDTO fromJson(Map<String, Object?> json) {
    return UserInfoDTO.fromJson(json);
  }
}

/// @nodoc
const $UserInfoDTO = _$UserInfoDTOTearOff();

/// @nodoc
mixin _$UserInfoDTO {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  int get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserInfoDTOCopyWith<UserInfoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoDTOCopyWith<$Res> {
  factory $UserInfoDTOCopyWith(
          UserInfoDTO value, $Res Function(UserInfoDTO) then) =
      _$UserInfoDTOCopyWithImpl<$Res>;
  $Res call(
      {String id,
      @JsonKey(name: 'name') String fullName,
      @JsonKey(name: 'phone') int phoneNumber,
      @JsonKey(name: 'address') String address});
}

/// @nodoc
class _$UserInfoDTOCopyWithImpl<$Res> implements $UserInfoDTOCopyWith<$Res> {
  _$UserInfoDTOCopyWithImpl(this._value, this._then);

  final UserInfoDTO _value;
  // ignore: unused_field
  final $Res Function(UserInfoDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? fullName = freezed,
    Object? phoneNumber = freezed,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as int,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserInfoDTOCopyWith<$Res>
    implements $UserInfoDTOCopyWith<$Res> {
  factory _$UserInfoDTOCopyWith(
          _UserInfoDTO value, $Res Function(_UserInfoDTO) then) =
      __$UserInfoDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      @JsonKey(name: 'name') String fullName,
      @JsonKey(name: 'phone') int phoneNumber,
      @JsonKey(name: 'address') String address});
}

/// @nodoc
class __$UserInfoDTOCopyWithImpl<$Res> extends _$UserInfoDTOCopyWithImpl<$Res>
    implements _$UserInfoDTOCopyWith<$Res> {
  __$UserInfoDTOCopyWithImpl(
      _UserInfoDTO _value, $Res Function(_UserInfoDTO) _then)
      : super(_value, (v) => _then(v as _UserInfoDTO));

  @override
  _UserInfoDTO get _value => super._value as _UserInfoDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? fullName = freezed,
    Object? phoneNumber = freezed,
    Object? address = freezed,
  }) {
    return _then(_UserInfoDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as int,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserInfoDTO extends _UserInfoDTO {
  const _$_UserInfoDTO(
      {required this.id,
      @JsonKey(name: 'name') required this.fullName,
      @JsonKey(name: 'phone') required this.phoneNumber,
      @JsonKey(name: 'address') required this.address})
      : super._();

  factory _$_UserInfoDTO.fromJson(Map<String, dynamic> json) =>
      _$$_UserInfoDTOFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'name')
  final String fullName;
  @override
  @JsonKey(name: 'phone')
  final int phoneNumber;
  @override
  @JsonKey(name: 'address')
  final String address;

  @override
  String toString() {
    return 'UserInfoDTO(id: $id, fullName: $fullName, phoneNumber: $phoneNumber, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserInfoDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.fullName, fullName) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.address, address));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(fullName),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(address));

  @JsonKey(ignore: true)
  @override
  _$UserInfoDTOCopyWith<_UserInfoDTO> get copyWith =>
      __$UserInfoDTOCopyWithImpl<_UserInfoDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserInfoDTOToJson(this);
  }
}

abstract class _UserInfoDTO extends UserInfoDTO {
  const factory _UserInfoDTO(
      {required String id,
      @JsonKey(name: 'name') required String fullName,
      @JsonKey(name: 'phone') required int phoneNumber,
      @JsonKey(name: 'address') required String address}) = _$_UserInfoDTO;
  const _UserInfoDTO._() : super._();

  factory _UserInfoDTO.fromJson(Map<String, dynamic> json) =
      _$_UserInfoDTO.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'name')
  String get fullName;
  @override
  @JsonKey(name: 'phone')
  int get phoneNumber;
  @override
  @JsonKey(name: 'address')
  String get address;
  @override
  @JsonKey(ignore: true)
  _$UserInfoDTOCopyWith<_UserInfoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
