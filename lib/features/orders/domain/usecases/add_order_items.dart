import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/entities/failures.dart';
import '../../../cart/domain/entities/cart_item.dart';
import '../entities/order_item.dart';
import '../repositories/i_order_repository.dart';

@LazySingleton()
class AddOrderItems {
  final IOrderRepository _repository;

  AddOrderItems(this._repository);

  Future<Either<Failure, Unit>> call(List<OrderItem> items) async {

    return await _repository.addToOrders(items);
  }
}
