// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item_dtos.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CartItemDTOAdapter extends TypeAdapter<_$_CartItemDTO> {
  @override
  final int typeId = 6;

  @override
  _$_CartItemDTO read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_CartItemDTO(
      id: fields[0] as String?,
      name: fields[1] as String,
      price: fields[3] as double,
      discount: fields[4] as double,
      image: fields[5] as String,
      quantity: fields[6] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$_CartItemDTO obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.price)
      ..writeByte(4)
      ..write(obj.discount)
      ..writeByte(5)
      ..write(obj.image)
      ..writeByte(6)
      ..write(obj.quantity);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CartItemDTOAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartItemDTO _$$_CartItemDTOFromJson(Map<String, dynamic> json) =>
    _$_CartItemDTO(
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      discount: (json['discount'] as num).toDouble(),
      image: json['image'] as String,
      quantity: json['quantity'] as int,
    );

Map<String, dynamic> _$$_CartItemDTOToJson(_$_CartItemDTO instance) =>
    <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
      'discount': instance.discount,
      'image': instance.image,
      'quantity': instance.quantity,
    };
