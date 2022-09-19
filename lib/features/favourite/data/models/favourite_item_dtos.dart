import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fruit_market/features/product/data/models/product_dtos.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../core/entities/value_objects.dart';
import '../../../../core/firebase/firestore_helper.dart';
import '../../../product/data/models/product_converter.dart';
import '../../domain/entities/favourite_item.dart';

part 'favourite_item_dtos.freezed.dart';

part 'favourite_item_dtos.g.dart';

@freezed
abstract class FavouriteItemDTO extends HiveObject
    implements _$FavouriteItemDTO {
  @HiveType(typeId: 5, adapterName: 'FavouriteItemDTOAdapter')
  factory FavouriteItemDTO({
    @HiveField(0) @JsonKey(ignore: true) String? id,
    @HiveField(1)
    @JsonKey(name: 'product')
    @ProductConverter()
        required ProductDTO product,
  }) = _FavouriteItemDTO;

  factory FavouriteItemDTO.fromDomain(FavouriteItem favouriteItem) {
    return FavouriteItemDTO(
      id: favouriteItem.id.getOrCrash(),
      product: ProductDTO.fromDomain(favouriteItem.product),
    );
  }

  FavouriteItem toDomain() {
    return FavouriteItem(
      id: UniqueId.fromUniqueString(id!),
      product: product.toDomain(),
    );
  }

  factory FavouriteItemDTO.fromJson(Map<String, dynamic> json) =>
      _$FavouriteItemDTOFromJson(json);

  factory FavouriteItemDTO.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data()! as Map<String, dynamic>;
    return FavouriteItemDTO.fromJson(data).copyWith(id: doc.id);
  }

  FavouriteItemDTO._();
}


