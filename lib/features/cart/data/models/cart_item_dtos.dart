import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../core/entities/value_objects.dart';
import '../../../../core/firebase/firestore_helper.dart';
import '../../../product/data/models/product_converter.dart';
import '../../../product/data/models/product_dtos.dart';
import '../../domain/entities/cart_item.dart';
import '../../domain/entities/value_objects.dart';

part 'cart_item_dtos.freezed.dart';

part 'cart_item_dtos.g.dart';

@freezed
abstract class CartItemDTO extends HiveObject implements _$CartItemDTO {
  @HiveType(typeId: 6, adapterName: 'CartItemDTOAdapter')
  factory CartItemDTO({
    @HiveField(0) @JsonKey(ignore: true) String? id,
    @HiveField(1)
    @JsonKey(name: 'product')
    @ProductConverter()
    required ProductDTO product,
    @HiveField(2) required int quantity,
  }) = _CartItemDTO;

  factory CartItemDTO.fromDomain(CartItem cartItem) {
    return CartItemDTO(
      id: cartItem.id.getOrCrash(),
      product: ProductDTO.fromDomain(cartItem.product),
      quantity: cartItem.quantity.getOrCrash(),
    );
  }

  CartItem toDomain() {
    return CartItem(
      id: UniqueId.fromUniqueString(id!),
      product: product.toDomain(),
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
