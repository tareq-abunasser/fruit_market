import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

import '../models/order_item_dtos.dart';

import '../../../../core/services/hive_manager.dart';

@Singleton()
class OrderHiveManager implements IHiveManager {
  late Box<OrderItemDTO> _ordersBox;
  static const String hiveOrders = 'orders';

  @override
  Future<void> init() async {
    Hive.registerAdapter(OrderItemDTOAdapter());
    _ordersBox = await Hive.openBox<OrderItemDTO>(hiveOrders);
  }

  Box<OrderItemDTO>? get ordersBox => _ordersBox;

  @override
  Future<void> close() async {
    await _ordersBox.close();
  }

  @override
  Future<void> clear() async {
    await _ordersBox.clear();
  }
}
