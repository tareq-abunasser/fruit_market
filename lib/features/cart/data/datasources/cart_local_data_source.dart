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
}

@LazySingleton(as: CartLocalDataSource)
class CartLocalDataSourceImpl extends CartLocalDataSource {
  final CartHiveManager _hiveManager;

  CartLocalDataSourceImpl(this._hiveManager);

  @override
  void cacheCart(List<CartItemDTO> items) {
    Map<dynamic, CartItemDTO> itemsAsMap = {};
    items.forEach((p) => itemsAsMap[p.id] = p);
    _hiveManager.shoppingCartBox!.putAll(itemsAsMap);
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
    _hiveManager.shoppingCartBox!.delete(product.id);
  }
}
