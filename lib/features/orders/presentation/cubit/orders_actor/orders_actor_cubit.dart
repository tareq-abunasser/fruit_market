import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fruit_market/features/orders/domain/entities/order_item.dart';
import 'package:fruit_market/features/orders/domain/usecases/get_orders.dart';
import 'package:fruit_market/features/orders/domain/usecases/update_order_item.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/entities/failures.dart';

part 'orders_actor_state.dart';

part 'orders_actor_cubit.freezed.dart';

@injectable
class OrdersActorCubit extends Cubit<OrdersActorState> {
  OrdersActorCubit(this._updateOrderItem)
      : super(const OrdersActorState.initial());
  final UpdateOrderItem _updateOrderItem;

  void updateOrderItem(OrderItem item) {
    emit(const OrdersActorState.actionInProgress());
    _updateOrderItem(item).then(
      (failureOrOrders) => failureOrOrders.fold(
        (failure) => emit(OrdersActorState.actionFailure(failure)),
        (orders) {
          emit(const OrdersActorState.actionSuccess());
        },
      ),
    );
  }
}
