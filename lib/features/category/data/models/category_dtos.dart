import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../core/entities/value_objects.dart';
import '../../domain/entities/category.dart';

part 'category_dtos.freezed.dart';
part 'category_dtos.g.dart';
// @JsonSerializable()
@freezed
abstract class CategoryDTO extends HiveObject implements _$CategoryDTO {
  CategoryDTO._();
   @HiveType(typeId: 8, adapterName: 'CategoryDTOAdapter')
   factory CategoryDTO({
     @HiveField(0) @JsonKey(ignore: true) String? id,
     @HiveField(1) @JsonKey(name: 'name') required String name,
  }) = _CategoryDTO;

  factory CategoryDTO.fromDomain(Category category) {
    return CategoryDTO(
      id: category.id.getOrCrash(),
      name: category.name.getOrCrash(),

    );
  }

  Category toDomain() {
    return Category(
      id:UniqueId.fromUniqueString(id!),
      name:ItemName(name),
    );
  }

  factory CategoryDTO.fromJson(Map<String, dynamic> json) =>
      _$CategoryDTOFromJson(json);

  factory CategoryDTO.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data()! as Map<String, dynamic>;
    return CategoryDTO.fromJson(data).copyWith(id: doc.id);
  }
}
