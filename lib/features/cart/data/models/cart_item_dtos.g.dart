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
      product: fields[1] as ProductDTO,
      quantity: fields[2] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$_CartItemDTO obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.product)
      ..writeByte(2)
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
      product: const ProductConverter()
          .fromJson(json['product'] as Map<String, dynamic>),
      quantity: json['quantity'] as int,
    );

Map<String, dynamic> _$$_CartItemDTOToJson(_$_CartItemDTO instance) =>
    <String, dynamic>{
      'product': const ProductConverter().toJson(instance.product),
      'quantity': instance.quantity,
    };
