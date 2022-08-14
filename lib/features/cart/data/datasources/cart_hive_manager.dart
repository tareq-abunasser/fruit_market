import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

import '../models/cart_item_dtos.dart';
import 'cart_local_data_source.dart';


@Singleton()
class CartHiveManager {
  late Box<CartItemDTO> _shoppingCartBox;
  static const String hiveShoppingCart = 'shopping_cart';

  Future<void> init() async {
    Hive.registerAdapter(CartItemDTOAdapter());
    _shoppingCartBox =
        await Hive.openBox<CartItemDTO>(hiveShoppingCart);
  }

  Box<CartItemDTO>? get shoppingCartBox => _shoppingCartBox;

  Future<void> close() async {
    await _shoppingCartBox.close();
  }

  Future<void> clear() async {
    await _shoppingCartBox.clear();
  }
}
