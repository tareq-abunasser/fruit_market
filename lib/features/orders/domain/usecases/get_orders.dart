import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/entities/failures.dart';
import '../entities/order_item.dart';
import '../repositories/i_order_repository.dart';

@LazySingleton()
class GetOrders {
  final IOrderRepository _repository;

  GetOrders(this._repository);

  Future<Either<Failure, List<OrderItem>>> call() async {
    Get.printInfo(info: 'function : call');
    return await _repository.getOrders();
  }
}
