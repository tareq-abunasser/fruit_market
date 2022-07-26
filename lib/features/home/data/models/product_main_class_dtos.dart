import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../core/entities/value_objects.dart';
import '../../domain/entities/product_main_class.dart';
import '../../domain/entities/value_objects.dart';

part 'product_main_class_dtos.freezed.dart';
part 'product_main_class_dtos.g.dart';
// @JsonSerializable()
@freezed
abstract class ProductMainClassDTO extends HiveObject implements _$ProductMainClassDTO {
   ProductMainClassDTO._();
   @HiveType(typeId: 1, adapterName: 'ProductMainClassDTOAdapter')
   factory ProductMainClassDTO({
     @HiveField(0) @JsonKey(ignore: true) String? id,
     @HiveField(1) @JsonKey(name: 'name') required String name,
  }) = _ProductMainClassDTO;

  factory ProductMainClassDTO.fromDomain(ProductMainClass productMainClass) {
    return ProductMainClassDTO(
      id: productMainClass.id.getOrCrash(),
      name: productMainClass.name.getOrCrash(),

    );
  }

  ProductMainClass toDomain() {
    return ProductMainClass(
      id:UniqueId.fromUniqueString(id!),
      name:ItemName(name),
    );
  }

  factory ProductMainClassDTO.fromJson(Map<String, dynamic> json) =>
      _$ProductMainClassDTOFromJson(json);

  factory ProductMainClassDTO.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data()! as Map<String, dynamic>;
    return ProductMainClassDTO.fromJson(data).copyWith(id: doc.id);
  }
}
