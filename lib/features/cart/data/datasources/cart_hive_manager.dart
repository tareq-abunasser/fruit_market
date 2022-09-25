import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

import '../../../../core/services/hive_manager.dart';
import '../models/cart_item_dtos.dart';
import 'cart_local_data_source.dart';

@Singleton()
class CartHiveManager implements IHiveManager {
  late Box<CartItemDTO> _shoppingCartBox;
  static const String hiveShoppingCart = 'shopping_cart';

  @override
  Future<void> init() async {
    Hive.registerAdapter(CartItemDTOAdapter());
    _shoppingCartBox = await Hive.openBox<CartItemDTO>(hiveShoppingCart);
  }

  Box<CartItemDTO>? get shoppingCartBox => _shoppingCartBox;

  @override
  Future<void> close() async {
    await _shoppingCartBox.close();
  }

  @override
  Future<void> clear() async {
    await _shoppingCartBox.clear();
  }
}
