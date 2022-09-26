import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fruit_market/features/cart/data/models/cart_item_dtos.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../core/entities/value_objects.dart';
import '../../../../core/firebase/firestore_helper.dart';
import '../../domain/entities/order_item.dart';

part 'order_item_dtos.freezed.dart';

part 'order_item_dtos.g.dart';

@freezed
abstract class OrderItemDTO extends HiveObject implements _$OrderItemDTO {
  @HiveType(typeId: 7, adapterName: 'OrderItemDTOAdapter')
  factory OrderItemDTO({
    @HiveField(0) @JsonKey(ignore: true) String? id,
    @HiveField(1)
    @JsonKey(name: 'cart')
    @CartConverter()
        required CartItemDTO cartItem,
    @HiveField(2)
    @JsonKey(name: 'order_at')
    @TimestampConverter()
        required Timestamp orderAt,
    @HiveField(4) @JsonKey(name: 'rate') required double rate,
  }) = _OrderItemDTO;

  factory OrderItemDTO.fromDomain(OrderItem orderItem) {
    return OrderItemDTO(
      id: orderItem.id.getOrCrash(),
      cartItem: CartItemDTO.fromDomain(orderItem.cartItem),
      rate: orderItem.rate,
      orderAt: Timestamp.now(),
    );
  }

  OrderItem toDomain() {
    return OrderItem(
      rate: rate,
      id: UniqueId.fromUniqueString(id!),
      cartItem: cartItem.toDomain(),
      orderAt: orderAt.toDate(),
    );
  }

  factory OrderItemDTO.fromJson(Map<String, dynamic> json) =>
      _$OrderItemDTOFromJson(json);

  factory OrderItemDTO.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data()! as Map<String, dynamic>;
    return OrderItemDTO.fromJson(data).copyWith(id: doc.id);
  }

  OrderItemDTO._();
}

class TimestampConverter implements JsonConverter<Timestamp, Object> {
  const TimestampConverter();

  @override
  Timestamp fromJson(Object? json) {
    return Timestamp.now();
  }

  @override
  Object toJson(Timestamp time) => time;
}

class CartConverter
    implements JsonConverter<CartItemDTO, Map<String, dynamic>> {
  const CartConverter();

  @override
  CartItemDTO fromJson(Map<String, dynamic> json) {
    return CartItemDTO.fromJson(json).copyWith(id: json['id']);
  }

  @override
  Map<String, dynamic> toJson(CartItemDTO cart) {
    return cart.toJson()..addAll({'id': cart.id});
  }
}

//
// class CartConverter implements JsonConverter<List<CartItemDTO>, List<Map<String, dynamic>>> {
//   const CartConverter();
//
//   @override
//   List<CartItemDTO> fromJson(List<Map<String, dynamic>> json) {
//     List<CartItemDTO> cart = [];
//     for (var item in json) {
//       cart.add(CartItemDTO.fromJson(item).copyWith(id: item['id']));
//     }
//     return cart;
//   }
//
//   @override
//   List<Map<String, dynamic>> toJson(List<CartItemDTO> cart) {
//     List<Map<String, dynamic>> cartMap = [];
//     for (var item in cart) {
//       var cartItem = item.toJson()
//         ..addAll({'id': item.id});
//       cartMap.add(cartItem);
//     }
//     return cartMap;
//   }
// }
