import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fruit_market/features/orders/domain/entities/order_item.dart';
import 'package:fruit_market/features/orders/domain/usecases/get_orders.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/entities/failures.dart';

part 'orders_watcher_state.dart';

part 'orders_watcher_cubit.freezed.dart';

@injectable
class OrdersWatcherCubit extends Cubit<OrdersWatcherState> {
  OrdersWatcherCubit(this._getOrders) : super(const OrdersWatcherState.initial());
  final GetOrders _getOrders;

  void watchOrders() {
    emit(const OrdersWatcherState.loadInProgress());
    _getOrders().then(
      (failureOrOrders) => failureOrOrders.fold(
        (failure) => emit(OrdersWatcherState.loadFailure(failure)),
        (orders) {
          emit(OrdersWatcherState.loadSuccess(orders));
        },
      ),
    );
  }
}
