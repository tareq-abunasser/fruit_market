// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_subclass_dtos.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductSubclassDTOAdapter extends TypeAdapter<_$_ProductSubclassDTO> {
  @override
  final int typeId = 2;

  @override
  _$_ProductSubclassDTO read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_ProductSubclassDTO(
      id: fields[0] as String?,
      name: fields[1] as String,
      parentId: fields[2] as String,
      desc: fields[3] as String,
      discount: fields[4] as double,
    );
  }

  @override
  void write(BinaryWriter writer, _$_ProductSubclassDTO obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.parentId)
      ..writeByte(3)
      ..write(obj.desc)
      ..writeByte(4)
      ..write(obj.discount);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductSubclassDTOAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductSubclassDTO _$$_ProductSubclassDTOFromJson(
        Map<String, dynamic> json) =>
    _$_ProductSubclassDTO(
      name: json['name'] as String,
      parentId: json['parent_id'] as String,
      desc: json['desc'] as String,
      discount: (json['discount'] as num).toDouble(),
    );

Map<String, dynamic> _$$_ProductSubclassDTOToJson(
        _$_ProductSubclassDTO instance) =>
    <String, dynamic>{
      'name': instance.name,
      'parent_id': instance.parentId,
      'desc': instance.desc,
      'discount': instance.discount,
    };
