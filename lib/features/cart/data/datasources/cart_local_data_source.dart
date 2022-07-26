import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:fruit_market/features/auth/data/models/user_dtos.dart';
import 'package:fruit_market/features/auth/data/models/user_info_dtos.dart';
import 'package:fruit_market/features/auth/domain/entities/user_info.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/entities/exceptions.dart';
import '../../../../core/entities/failures.dart';
import '../../../../core/utils/preferences_manager.dart';
import '../../domain/entities/cart_item.dart';
import '../models/cart_item_dtos.dart';
import 'cart_hive_manager.dart';

abstract class CartLocalDataSource {
  List<CartItemDTO> getCart();

  void addToCart(CartItemDTO product);

  void removeFromCart(CartItemDTO product);

  void clearCart();
}

@LazySingleton(as: CartLocalDataSource)
class CartLocalDataSourceImpl extends CartLocalDataSource {
  final CartHiveManager _hiveManager;
  static const String hiveShoppingCart = 'shopping_cart';

  CartLocalDataSourceImpl(this._hiveManager);

  @override
  void addToCart(CartItemDTO product) {
    // TODO: implement addToCart
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
