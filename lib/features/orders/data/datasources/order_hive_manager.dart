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
}
