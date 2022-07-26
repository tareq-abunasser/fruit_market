// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dtos.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserDTOAdapter extends TypeAdapter<_$_UserDTO> {
  @override
  final int typeId = 4;

  @override
  _$_UserDTO read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_UserDTO(
      id: fields[0] as String?,
      fullName: fields[1] as String,
      photoURL: fields[2] as String,
      email: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$_UserDTO obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.fullName)
      ..writeByte(2)
      ..write(obj.photoURL)
      ..writeByte(3)
      ..write(obj.email);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserDTOAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDTO _$$_UserDTOFromJson(Map<String, dynamic> json) => _$_UserDTO(
      fullName: json['name'] as String,
      photoURL: json['photo_url'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$$_UserDTOToJson(_$_UserDTO instance) =>
    <String, dynamic>{
      'name': instance.fullName,
      'photo_url': instance.photoURL,
      'email': instance.email,
    };
