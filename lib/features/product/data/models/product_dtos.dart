import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../../../../core/entities/exceptions.dart';
import '../../../../core/entities/value_objects.dart';
import '../../../../core/firebase/firestore_helper.dart';
import '../../domain/entities/product.dart';

part 'product_dtos.freezed.dart';

part 'product_dtos.g.dart';

@freezed
abstract class ProductDTO extends HiveObject implements _$ProductDTO {
  @HiveType(typeId: 10, adapterName: 'ProductDTOAdapter')
  factory ProductDTO({
    @HiveField(0) @JsonKey(ignore: true) String? id,
    @HiveField(1) @JsonKey(name: 'name') required String name,
    @HiveField(2) @JsonKey(name: 'parent_id') required String parentId,
    @HiveField(3) @JsonKey(name: 'price') required double price,
    @HiveField(4) @JsonKey(name: 'imageurl') required String image,
    @HiveField(5) @JsonKey(name: 'likes') required List likes,
    @HiveField(6) @JsonKey(name: 'rate') required Map<String, double> rate,
    @HiveField(7) @JsonKey(name: 'Nutrition')
        required Map<String, double> nutrition,
    @HiveField(8) @JsonKey(name: 'benefit') required String benefit,
    @HiveField(9) @JsonKey(name: 'discount') required double discount,
  }) = _ProductDTO;

  factory ProductDTO.fromDomain(Product product) {
    return ProductDTO(
      id: product.id.getOrCrash(),
      parentId: product.parentId.getOrCrash(),
      name: product.name.getOrCrash(),
      price: product.price.getOrCrash(),
      image: product.imageURL.getOrCrash(),
      rate: {"rate": product.rate.getOrCrash()},
      likes: product.isLike ? [FirebaseAuth.instance.currentUser!.uid] : [],
      nutrition: product.nutrition.getOrCrash(),
      benefit: product.desc.getOrCrash(),
      discount: product.discount.getOrCrash(),
    );
  }

  Product toDomain() {
    return Product(
      id: UniqueId.fromUniqueString(id!),
      parentId: UniqueId.fromUniqueString(parentId),
      name: ItemName(name),
      price: Price(price),
      imageURL: ImageURL(image),
      rate: Rate(rate),
      isLike: likes.contains(FirebaseAuth.instance.currentUser!.uid),
      desc: Description(benefit),
      nutrition: Nutrition(nutrition),
      discount: Discount(discount),
    );
  }

  factory ProductDTO.fromJson(Map<String, dynamic> json) =>
      _$ProductDTOFromJson(json);

  factory ProductDTO.fromFirestore(DocumentSnapshot doc) {
    try {
      final data = doc.data()! as Map<String, dynamic>;
      return ProductDTO.fromJson(data).copyWith(id: doc.id);
    } catch (error) {
      print("efsaffdasdd");
      print( doc.id);
      print(doc.data());
      print( "function : fromFirestore, ${error.toString()}");
      throw ServerException();
    }
  }

  ProductDTO._();
}
