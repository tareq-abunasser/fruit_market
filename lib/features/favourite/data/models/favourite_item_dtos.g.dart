// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favourite_item_dtos.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FavouriteItemDTOAdapter extends TypeAdapter<_$_FavouriteItemDTO> {
  @override
  final int typeId = 5;

  @override
  _$_FavouriteItemDTO read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_FavouriteItemDTO(
      id: fields[0] as String?,
      product: fields[1] as ProductDTO,
    );
  }

  @override
  void write(BinaryWriter writer, _$_FavouriteItemDTO obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.product);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FavouriteItemDTOAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FavouriteItemDTO _$$_FavouriteItemDTOFromJson(Map<String, dynamic> json) =>
    _$_FavouriteItemDTO(
      product: const ProductConverter()
          .fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FavouriteItemDTOToJson(_$_FavouriteItemDTO instance) =>
    <String, dynamic>{
      'product': const ProductConverter().toJson(instance.product),
    };
