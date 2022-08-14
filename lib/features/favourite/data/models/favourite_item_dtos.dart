import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../core/entities/value_objects.dart';
import '../../../../core/firebase/firestore_helper.dart';
import '../../domain/entities/favourite_item.dart';

part 'favourite_item_dtos.freezed.dart';

part 'favourite_item_dtos.g.dart';

@freezed
abstract class FavouriteItemDTO extends HiveObject implements _$FavouriteItemDTO {
  @HiveType(typeId: 5, adapterName: 'FavouriteItemDTOAdapter')
  factory FavouriteItemDTO({
    @HiveField(0) @JsonKey(ignore: true) String? id,
    @HiveField(1) @JsonKey(name: 'name') required String name,
    @HiveField(3) @JsonKey(name: 'price') required double price,
    @HiveField(4) @JsonKey(name: 'imageurl') required String image,
    @HiveField(6) @JsonKey(name: 'rate') required Map<String, double> rate,
    @HiveField(9) @JsonKey(name: 'discount') required double discount,
  }) = _FavouriteItemDTO;

  factory FavouriteItemDTO.fromDomain(FavouriteItem favouriteItem) {
    return FavouriteItemDTO(
      id: favouriteItem.id.getOrCrash(),
      name: favouriteItem.name.getOrCrash(),
      price: favouriteItem.price.getOrCrash(),
      image: favouriteItem.imageURL.getOrCrash(),
      rate: {"rate": favouriteItem.rate.getOrCrash()},
      discount: favouriteItem.discount.getOrCrash(),
    );
  }

  FavouriteItem toDomain() {
    return FavouriteItem(
      id: UniqueId.fromUniqueString(id!),
      name: ItemName(name),
      price: Price(price),
      imageURL: ImageURL(image),
      rate: Rate(rate),
      discount: Discount(discount),
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
