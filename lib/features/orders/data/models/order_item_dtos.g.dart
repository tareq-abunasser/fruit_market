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
      cartItem: fields[1] as CartItemDTO,
      orderAt: fields[2] as Timestamp,
      rate: fields[4] as double,
    );
  }

  @override
  void write(BinaryWriter writer, _$_OrderItemDTO obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.cartItem)
      ..writeByte(2)
      ..write(obj.orderAt)
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
      cartItem:
          const CartConverter().fromJson(json['cart'] as Map<String, dynamic>),
      orderAt: const TimestampConverter().fromJson(json['order_at'] as Object),
      rate: (json['rate'] as num).toDouble(),
    );

Map<String, dynamic> _$$_OrderItemDTOToJson(_$_OrderItemDTO instance) =>
    <String, dynamic>{
      'cart': const CartConverter().toJson(instance.cartItem),
      'order_at': const TimestampConverter().toJson(instance.orderAt),
      'rate': instance.rate,
    };
