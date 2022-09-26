import 'dart:convert';
import 'package:injectable/injectable.dart';

import '../../../../core/entities/exceptions.dart';
import '../models/cart_item_dtos.dart';
import 'cart_hive_manager.dart';

abstract class CartLocalDataSource {
  List<CartItemDTO> getCart();

  void cacheCart(List<CartItemDTO> items);

  void removeFromCart(CartItemDTO product);

  void clearCart();

  void updateCartItem(CartItemDTO cartItem);
  void updateCart(List<CartItemDTO> cartItems);
}

@LazySingleton(as: CartLocalDataSource)
class CartLocalDataSourceImpl extends CartLocalDataSource {
  final CartHiveManager _hiveManager;

  CartLocalDataSourceImpl(this._hiveManager);

  @override
  void cacheCart(List<CartItemDTO> items) {
    Map<dynamic, CartItemDTO> itemsAsMap = {};
    for (var p in items) {
      itemsAsMap[p.id] = p;
    }
    try {
      _hiveManager.shoppingCartBox!.putAll(itemsAsMap);
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  void clearCart() {
    try {
      _hiveManager.shoppingCartBox!.clear();
    } catch (_) {
      throw CacheException();
    }
  }

  @override
  List<CartItemDTO> getCart() {
    try {
      return _hiveManager.shoppingCartBox!.values.toList();
    } catch (_) {
      throw CacheException();
    }
  }

  @override
  void removeFromCart(CartItemDTO product) {
    try {
      _hiveManager.shoppingCartBox!.delete(product.id);
    } catch (_) {
      throw CacheException();
    }
  }

  @override
  void updateCart(List<CartItemDTO> cartItems) {
    Map<dynamic, CartItemDTO> itemsAsMap = {};
    for (var p in cartItems) {
      itemsAsMap[p.id] = p;
    }
    try {
      _hiveManager.shoppingCartBox!.putAll(itemsAsMap);
    } catch (_) {
      throw CacheException();
    }
  }

  @override
  void updateCartItem(CartItemDTO cartItem) {
    try {
      _hiveManager.shoppingCartBox!.put(cartItem.id, cartItem);
    } catch (_) {
      throw CacheException();
    }
  }
}