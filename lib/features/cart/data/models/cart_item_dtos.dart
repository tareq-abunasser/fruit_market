import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../core/entities/value_objects.dart';
import '../../../../core/firebase/firestore_helper.dart';
import '../../domain/entities/cart_item.dart';
import '../../domain/entities/value_objects.dart';

part 'cart_item_dtos.freezed.dart';

part 'cart_item_dtos.g.dart';

@freezed
abstract class CartItemDTO extends HiveObject implements _$CartItemDTO {
  @HiveType(typeId: 6, adapterName: 'CartItemDTOAdapter')
  factory CartItemDTO({
    @HiveField(0) @JsonKey(ignore: true) String? id,
    @HiveField(1) required String name,
    @HiveField(3) required double price,
    @HiveField(4) required double discount,
    @HiveField(5) required String image,
    @HiveField(6) required int quantity,
  }) = _CartItemDTO;

  factory CartItemDTO.fromDomain(CartItem product) {
    return CartItemDTO(
      id: product.id.getOrCrash(),
      name: product.name.getOrCrash(),
      price: product.currentPrice.getOrCrash(),
      discount:
          product.saved.getOrCrash() * 100 / product.currentPrice.getOrCrash(),
      image: product.imageURL.getOrCrash(),
      quantity: product.quantity.getOrCrash(),
    );
  }

  CartItem toDomain() {
    return CartItem(
      id: UniqueId.fromUniqueString(id!),
      name: ItemName(name),
      currentPrice: Price(price),
      oldPrice: Price(price + price * discount / 100),
      saved: Price(price * discount / 100),
      imageURL: ImageURL(image),
      quantity: Quantity(quantity),
    );
  }

  factory CartItemDTO.fromJson(Map<String, dynamic> json) =>
      _$CartItemDTOFromJson(json);

  factory CartItemDTO.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data()! as Map<String, dynamic>;
    return CartItemDTO.fromJson(data).copyWith(id: doc.id);
  }

  CartItemDTO._();
}
