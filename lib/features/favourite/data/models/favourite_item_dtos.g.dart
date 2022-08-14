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
      name: fields[1] as String,
      price: fields[3] as double,
      image: fields[4] as String,
      rate: (fields[6] as Map).cast<String, double>(),
      discount: fields[9] as double,
    );
  }

  @override
  void write(BinaryWriter writer, _$_FavouriteItemDTO obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.price)
      ..writeByte(4)
      ..write(obj.image)
      ..writeByte(6)
      ..write(obj.rate)
      ..writeByte(9)
      ..write(obj.discount);
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
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      image: json['imageurl'] as String,
      rate: (json['rate'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      discount: (json['discount'] as num).toDouble(),
    );

Map<String, dynamic> _$$_FavouriteItemDTOToJson(_$_FavouriteItemDTO instance) =>
    <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
      'imageurl': instance.image,
      'rate': instance.rate,
      'discount': instance.discount,
    };
