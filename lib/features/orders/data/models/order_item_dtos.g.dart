// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_item_dtos.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class OrderItemDTOAdapter extends TypeAdapter<_$_OrderItemDTO> {
  @override
  final int typeId = 7;

  @override
  _$_OrderItemDTO read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_OrderItemDTO(
      id: fields[0] as String?,
      name: fields[1] as String,
      image: fields[2] as String,
      deliveredOn: fields[3] as FieldValue,
      rate: fields[4] as double,
    );
  }

  @override
  void write(BinaryWriter writer, _$_OrderItemDTO obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.image)
      ..writeByte(3)
      ..write(obj.deliveredOn)
      ..writeByte(4)
      ..write(obj.rate);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OrderItemDTOAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderItemDTO _$$_OrderItemDTOFromJson(Map<String, dynamic> json) =>
    _$_OrderItemDTO(
      name: json['name'] as String,
      image: json['imageurl'] as String,
      deliveredOn: const ServerTimestampConverter()
          .fromJson(json['delivered_on'] as Object),
      rate: (json['rate'] as num).toDouble(),
    );

Map<String, dynamic> _$$_OrderItemDTOToJson(_$_OrderItemDTO instance) =>
    <String, dynamic>{
      'name': instance.name,
      'imageurl': instance.image,
      'delivered_on':
          const ServerTimestampConverter().toJson(instance.deliveredOn),
      'rate': instance.rate,
    };
