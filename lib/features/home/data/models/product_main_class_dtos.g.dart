// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_main_class_dtos.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductMainClassDTOAdapter extends TypeAdapter<_$_ProductMainClassDTO> {
  @override
  final int typeId = 1;

  @override
  _$_ProductMainClassDTO read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_ProductMainClassDTO(
      id: fields[0] as String?,
      name: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$_ProductMainClassDTO obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductMainClassDTOAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductMainClassDTO _$$_ProductMainClassDTOFromJson(
        Map<String, dynamic> json) =>
    _$_ProductMainClassDTO(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_ProductMainClassDTOToJson(
        _$_ProductMainClassDTO instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
