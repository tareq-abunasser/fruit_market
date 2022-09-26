import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/entities/failures.dart';
import '../../../cart/domain/entities/cart_item.dart';
import '../entities/order_item.dart';
import '../repositories/i_order_repository.dart';

@LazySingleton()
class UpdateOrderItem {
  final IOrderRepository _repository;

  UpdateOrderItem(this._repository);

  Future<Either<Failure, Unit>> call(OrderItem item) async {
    return await _repository.updateOrderItem(item);
  }
}
