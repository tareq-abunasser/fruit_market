import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../../../../core/entities/value_objects.dart';
import '../../domain/entities/subcategory.dart';

part 'subcategory_dtos.freezed.dart';

part 'subcategory_dtos.g.dart';

// @JsonSerializable()
@freezed
abstract class SubcategoryDTO extends HiveObject implements _$SubcategoryDTO {
   SubcategoryDTO._();

  @HiveType(typeId: 9, adapterName: 'SubcategoryDTOAdapter')
   factory SubcategoryDTO({
    @HiveField(0) @JsonKey(ignore: true) String? id,
    @HiveField(1) @JsonKey(name: 'name') required String name,
    @HiveField(2) @JsonKey(name: 'parent_id') required String parentId,
    @HiveField(3) @JsonKey(name: 'desc') required String desc,
    @HiveField(4) @JsonKey(name: 'discount') required double discount,
  }) = _SubcategoryDTO;

  factory SubcategoryDTO.fromDomain(Subcategory subcategory) {
    return SubcategoryDTO(
      id: subcategory.id.getOrCrash(),
      name: subcategory.name.getOrCrash(),
        parentId:subcategory.parentId.getOrCrash(),
        desc:subcategory.desc.getOrCrash(),
        discount:subcategory.discount.getOrCrash(),
    );
  }

  Subcategory toDomain() {
    return Subcategory(
      id: UniqueId.fromUniqueString(id!),
      parentId: UniqueId.fromUniqueString(parentId),
      name: ItemName(name),
      desc: Description(desc),
      discount: Discount(discount),
    );
  }

  factory SubcategoryDTO.fromJson(Map<String, dynamic> json) =>
      _$SubcategoryDTOFromJson(json);

  factory SubcategoryDTO.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data()! as Map<String, dynamic>;
    return SubcategoryDTO.fromJson(data).copyWith(id: doc.id);
  }
}
