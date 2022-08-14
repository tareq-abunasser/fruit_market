import 'package:dartz/dartz.dart';
import 'package:fruit_market/core/entities/failures.dart';

import '../entities/order_item.dart';

abstract class IOrderRepository {
  Future<Either<Failure, List<OrderItem>>> getOrders();

  Future<Either<Failure, Unit>> addToOrders(List<OrderItem> items);

  Future<Either<Failure, Unit>> updateOrderItem(OrderItem item);

}
