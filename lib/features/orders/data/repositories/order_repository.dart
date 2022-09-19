import 'package:dartz/dartz.dart';
import 'package:fruit_market/core/entities/failures.dart';
import 'package:fruit_market/features/cart/domain/entities/cart_item.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/entities/exceptions.dart';
import '../../../../core/services/network_info.dart';
import '../../domain/entities/order_item.dart';
import '../../domain/repositories/i_order_repository.dart';
import '../datasources/order_local_data_source.dart';
import '../datasources/order_remote_data_source.dart';
import '../models/order_item_dtos.dart';

@LazySingleton(as: IOrderRepository)
class OrderRepository implements IOrderRepository {
  final OrderLocalDataSource _orderLocalDataSourceImpl;
  final OrderRemoteDataSource _orderRemoteDataSourceImpl;
  final NetworkInfo _networkInfo;

  OrderRepository(
    this._orderLocalDataSourceImpl,
    this._orderRemoteDataSourceImpl,
    this._networkInfo,
  );

  @override
  Future<Either<Failure, Unit>> addToOrders(List<OrderItem> items) async {
    printInfo(info: "function addToOrders");
    try {
      if (await _networkInfo.isConnected) {
        List<OrderItemDTO> itemsDto =
            items.map((item) => OrderItemDTO.fromDomain(item)).toList();
        _orderRemoteDataSourceImpl.addToOrders(itemsDto);
        return right(unit);
      } else {
        return left(const Failure.internet());
      }
    } on ServerException {
      return left(const Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, List<OrderItem>>> getOrders() async {
    printInfo(info: "function getOrders");
    List<OrderItem> listOrderItem = [];
    final List<OrderItemDTO> listOrderItemDTO;
    try {
      if (await _networkInfo.isConnected) {
        listOrderItemDTO = await _orderRemoteDataSourceImpl.getOrders();
      } else {
        listOrderItemDTO = _orderLocalDataSourceImpl.getOrders();
      }
      for (final item in listOrderItemDTO) {
        listOrderItem.add(item.toDomain());
      }
      return right(listOrderItem);
    } on ServerException {
      return left(const Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, Unit>> updateOrderItem(OrderItem item) async {
    printInfo(info: "function updateOrderItem");
    try {
      if (await _networkInfo.isConnected) {
        _orderRemoteDataSourceImpl
            .updateOrderItem(OrderItemDTO.fromDomain(item));
        return right(unit);
      } else {
        return left(const Failure.internet());
      }
    } on ServerException {
      return left(const Failure.serverError());
    }
  }
}
