import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fruit_market/features/orders/domain/entities/order_item.dart';
import 'package:fruit_market/features/orders/domain/usecases/get_orders.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/entities/failures.dart';

part 'orders_state.dart';

part 'orders_cubit.freezed.dart';

@injectable
class OrdersCubit extends Cubit<OrdersState> {
  OrdersCubit(this._getCategories) : super(const OrdersState.initial());
  final GetOrders _getCategories;

  void watchOrders() {
    emit(const OrdersState.loadInProgress());
    _getCategories().then(
      (failureOrOrders) => failureOrOrders.fold(
        (failure) => emit(OrdersState.loadFailure(failure)),
        (orders) {
          emit(OrdersState.loadSuccess(orders));
        },
      ),
    );
  }
}
