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
      {required UserDTO user,
      required String fullName,
      required int phoneNumber,
      required String address}) {
    return _UserInfoDTO(
      user: user,
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
  UserDTO get user => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  int get phoneNumber => throw _privateConstructorUsedError;
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
  $Res call({UserDTO user, String fullName, int phoneNumber, String address});

  $UserDTOCopyWith<$Res> get user;
}

/// @nodoc
class _$UserInfoDTOCopyWithImpl<$Res> implements $UserInfoDTOCopyWith<$Res> {
  _$UserInfoDTOCopyWithImpl(this._value, this._then);

  final UserInfoDTO _value;
  // ignore: unused_field
  final $Res Function(UserInfoDTO) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? fullName = freezed,
    Object? phoneNumber = freezed,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDTO,
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

  @override
  $UserDTOCopyWith<$Res> get user {
    return $UserDTOCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$UserInfoDTOCopyWith<$Res>
    implements $UserInfoDTOCopyWith<$Res> {
  factory _$UserInfoDTOCopyWith(
          _UserInfoDTO value, $Res Function(_UserInfoDTO) then) =
      __$UserInfoDTOCopyWithImpl<$Res>;
  @override
  $Res call({UserDTO user, String fullName, int phoneNumber, String address});

  @override
  $UserDTOCopyWith<$Res> get user;
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
    Object? user = freezed,
    Object? fullName = freezed,
    Object? phoneNumber = freezed,
    Object? address = freezed,
  }) {
    return _then(_UserInfoDTO(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDTO,
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
      {required this.user,
      required this.fullName,
      required this.phoneNumber,
      required this.address})
      : super._();

  factory _$_UserInfoDTO.fromJson(Map<String, dynamic> json) =>
      _$$_UserInfoDTOFromJson(json);

  @override
  final UserDTO user;
  @override
  final String fullName;
  @override
  final int phoneNumber;
  @override
  final String address;

  @override
  String toString() {
    return 'UserInfoDTO(user: $user, fullName: $fullName, phoneNumber: $phoneNumber, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserInfoDTO &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.fullName, fullName) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.address, address));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(user),
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
      {required UserDTO user,
      required String fullName,
      required int phoneNumber,
      required String address}) = _$_UserInfoDTO;
  const _UserInfoDTO._() : super._();

  factory _UserInfoDTO.fromJson(Map<String, dynamic> json) =
      _$_UserInfoDTO.fromJson;

  @override
  UserDTO get user;
  @override
  String get fullName;
  @override
  int get phoneNumber;
  @override
  String get address;
  @override
  @JsonKey(ignore: true)
  _$UserInfoDTOCopyWith<_UserInfoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
