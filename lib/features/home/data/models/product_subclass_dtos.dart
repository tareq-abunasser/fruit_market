import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fruit_market/features/home/domain/entities/product.dart';
import 'package:fruit_market/features/home/domain/entities/product_subclass.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../core/entities/value_objects.dart';
import '../../domain/entities/product_main_class.dart';
import '../../domain/entities/value_objects.dart';

part 'product_subclass_dtos.freezed.dart';

part 'product_subclass_dtos.g.dart';

// @JsonSerializable()
@freezed
abstract class ProductSubclassDTO extends HiveObject implements _$ProductSubclassDTO {
   ProductSubclassDTO._();

  @HiveType(typeId: 2, adapterName: 'ProductSubclassDTOAdapter')
   factory ProductSubclassDTO({
    @HiveField(0) @JsonKey(ignore: true) String? id,
    @HiveField(1) @JsonKey(name: 'name') required String name,
    @HiveField(2) @JsonKey(name: 'parent_id') required String parentId,
    @HiveField(3) @JsonKey(name: 'desc') required String desc,
    @HiveField(4) @JsonKey(name: 'discount') required double discount,
  }) = _ProductSubclassDTO;

  factory ProductSubclassDTO.fromDomain(ProductSubclass productSubclass) {
    return ProductSubclassDTO(
      id: productSubclass.id.getOrCrash(),
      name: productSubclass.name.getOrCrash(),
        parentId:productSubclass.parentId.getOrCrash(),
        desc:productSubclass.desc.getOrCrash(),
        discount:productSubclass.discount.getOrCrash(),
    );
  }

  ProductSubclass toDomain() {
    return ProductSubclass(
      id: UniqueId.fromUniqueString(id!),
      parentId: UniqueId.fromUniqueString(parentId),
      name: ItemName(name),
      desc: Description(desc),
      discount: Discount(discount),
    );
  }

  factory ProductSubclassDTO.fromJson(Map<String, dynamic> json) =>
      _$ProductSubclassDTOFromJson(json);

  factory ProductSubclassDTO.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data()! as Map<String, dynamic>;
    return ProductSubclassDTO.fromJson(data).copyWith(id: doc.id);
  }
}
