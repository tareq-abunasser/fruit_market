import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

import '../models/order_item_dtos.dart';



@Singleton()
class OrderHiveManager {
  late Box<OrderItemDTO> _ordersBox;
  static const String hiveOrders = 'orders';

  Future<void> init() async {
    Hive.registerAdapter(OrderItemDTOAdapter());
    _ordersBox =
        await Hive.openBox<OrderItemDTO>(hiveOrders);
  }

  Box<OrderItemDTO>? get ordersBox => _ordersBox;
  Future<void> close() async {
    await _ordersBox.close();
  }

  Future<void> clear() async {
    await _ordersBox.clear();
  }

}
