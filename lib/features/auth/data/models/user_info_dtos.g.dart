// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserInfoDTO _$$_UserInfoDTOFromJson(Map<String, dynamic> json) =>
    _$_UserInfoDTO(
      user: UserDTO.fromJson(json['user'] as Map<String, dynamic>),
      fullName: json['fullName'] as String,
      phoneNumber: json['phoneNumber'] as int,
      address: json['address'] as String,
    );

Map<String, dynamic> _$$_UserInfoDTOToJson(_$_UserInfoDTO instance) =>
    <String, dynamic>{
      'user': instance.user,
      'fullName': instance.fullName,
      'phoneNumber': instance.phoneNumber,
      'address': instance.address,
    };
