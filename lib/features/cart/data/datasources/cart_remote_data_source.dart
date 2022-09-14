import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruit_market/core/firebase/firestore_helper.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/entities/exceptions.dart';
import '../models/cart_item_dtos.dart';

abstract class CartRemoteDataSource {
  Future<List<CartItemDTO>> getCart();

  void addToCart(CartItemDTO cartItem);

  void removeFromCart(CartItemDTO cartItem);

  void clearCart();

  void updateCartItem(CartItemDTO cartItem);

  void updateCart(List<CartItemDTO> cartItems);
}

@LazySingleton(as: CartRemoteDataSource)
class CartRemoteDataSourceImpl extends CartRemoteDataSource {
  final FirebaseFirestore _firestore;

  CartRemoteDataSourceImpl(
    this._firestore,
  );

  @override
  Future<void> addToCart(CartItemDTO cartItem) async {
    printInfo(info: "function addToCart");
    try {
      printInfo(info: "try addqToCart ${cartItem}");
      printInfo(info: "try addToCart ${cartItem.toJson()}");
      await _firestore.userCart().doc(cartItem.id).set(cartItem.toJson());
    } on FirebaseException catch (e) {
      printError(info: e.toString());
      throw ServerException(e.toString());
    }
  }

  @override
  Future<void> clearCart() async {
    printInfo(info: "function clearCart");
    try {
      final collection = await _firestore.userCart().get();
      final batch = _firestore.batch();
      for (final doc in collection.docs) {
        batch.delete(doc.reference);
      }
      await batch.commit();
    } on FirebaseException catch (e) {
      printError(info: e.toString());
      throw ServerException(e.toString());
    }
  }

  @override
  Future<void> removeFromCart(CartItemDTO cartItem) async {
    printInfo(info: "function removeFromCart");
    await _firestore.userCart().doc(cartItem.id).delete();
  }

  @override
  Future<List<CartItemDTO>> getCart() async {
    printInfo(info: "function getCart");
    try {
      final collection = await _firestore.userCart().get();
      return collection.docs
          .map((doc) => CartItemDTO.fromFirestore(doc))
          .toList();
    } on FirebaseException catch (e) {
      printError(info: e.toString());
      throw ServerException(e.toString());
    }
  }

  @override
  Future<void> updateCart(List<CartItemDTO> cartItems) async {
    printInfo(info: "function updateCart");
    try {
      final batch = _firestore.batch();
      for (final cartItem in cartItems) {
        batch.update(_firestore.userCart().doc(cartItem.id), cartItem.toJson());
      }
      await batch.commit();
    } on FirebaseException catch (e) {
      printError(info: e.toString());
      throw ServerException(e.toString());
    }
  }

  @override
  Future<void> updateCartItem(CartItemDTO cartItem) async {
    try {
      printInfo(info: "function updateCartItem");
      await _firestore.userCart().doc(cartItem.id).update(cartItem.toJson());
    } on FirebaseException catch (e) {
      printError(info: e.toString());
      throw ServerException(e.toString());
    }
  }
}
