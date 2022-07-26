// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserInfoDTO _$$_UserInfoDTOFromJson(Map<String, dynamic> json) =>
    _$_UserInfoDTO(
      id: json['id'] as String,
      fullName: json['name'] as String,
      phoneNumber: json['phone'] as int,
      address: json['address'] as String,
    );

Map<String, dynamic> _$$_UserInfoDTOToJson(_$_UserInfoDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.fullName,
      'phone': instance.phoneNumber,
      'address': instance.address,
    };
