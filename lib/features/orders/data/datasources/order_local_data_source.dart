import 'dart:convert';
import 'package:fruit_market/features/orders/data/models/order_item_dtos.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/entities/exceptions.dart';
import 'order_hive_manager.dart';

abstract class OrderLocalDataSource {
  List<OrderItemDTO> getOrders();

  void cacheOrders(List<OrderItemDTO> items);

  void removeFromOrders(OrderItemDTO item);

  void clearOrders();
}

@LazySingleton(as: OrderLocalDataSource)
class OrderLocalDataSourceImpl extends OrderLocalDataSource {
  final OrderHiveManager _hiveManager;

  OrderLocalDataSourceImpl(this._hiveManager);

  @override
  void cacheOrders(List<OrderItemDTO> items) {
    Map<dynamic, OrderItemDTO> itemsAsMap = {};
    items.forEach((p) => itemsAsMap[p.id] = p);
    _hiveManager.ordersBox!.putAll(itemsAsMap);
  }

  @override
  void clearOrders() {
    try {
      _hiveManager.ordersBox!.clear();
    } catch (_) {
      throw CacheException();
    }
  }

  @override
  List<OrderItemDTO> getOrders() {
    try {
      return _hiveManager.ordersBox!.values.toList();
    } catch (_) {
      throw CacheException();
    }
  }

  @override
  void removeFromOrders(OrderItemDTO item) {
    _hiveManager.ordersBox!.delete(item.id);
  }
}
