// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dtos.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductDTOAdapter extends TypeAdapter<_$_ProductDTO> {
  @override
  final int typeId = 10;

  @override
  _$_ProductDTO read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_ProductDTO(
      id: fields[0] as String?,
      name: fields[1] as String,
      parentId: fields[2] as String,
      price: fields[3] as double,
      image: fields[4] as String,
      likes: (fields[5] as List).cast<dynamic>(),
      rate: (fields[6] as Map).cast<String, double>(),
      nutrition: (fields[7] as Map).cast<String, double>(),
      benefit: fields[8] as String,
      discount: fields[9] as double,
    );
  }

  @override
  void write(BinaryWriter writer, _$_ProductDTO obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.parentId)
      ..writeByte(3)
      ..write(obj.price)
      ..writeByte(4)
      ..write(obj.image)
      ..writeByte(5)
      ..write(obj.likes)
      ..writeByte(6)
      ..write(obj.rate)
      ..writeByte(7)
      ..write(obj.nutrition)
      ..writeByte(8)
      ..write(obj.benefit)
      ..writeByte(9)
      ..write(obj.discount);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductDTOAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductDTO _$$_ProductDTOFromJson(Map<String, dynamic> json) =>
    _$_ProductDTO(
      name: json['name'] as String,
      parentId: json['parent_id'] as String,
      price: (json['price'] as num).toDouble(),
      image: json['imageurl'] as String,
      likes: json['likes'] as List<dynamic>,
      rate: (json['rate'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      nutrition: (json['Nutrition'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      benefit: json['benefit'] as String,
      discount: (json['discount'] as num).toDouble(),
    );

Map<String, dynamic> _$$_ProductDTOToJson(_$_ProductDTO instance) =>
    <String, dynamic>{
      'name': instance.name,
      'parent_id': instance.parentId,
      'price': instance.price,
      'imageurl': instance.image,
      'likes': instance.likes,
      'rate': instance.rate,
      'Nutrition': instance.nutrition,
      'benefit': instance.benefit,
      'discount': instance.discount,
    };
