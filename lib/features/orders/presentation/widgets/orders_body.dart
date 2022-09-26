import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/critical_failure_display_widget.dart';
import '../cubit/orders_watcher/orders_watcher_cubit.dart';
import 'error_order_item_card.dart';
import 'order_item_card.dart';

class OrdersBody extends StatelessWidget {
  const OrdersBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrdersWatcherCubit, OrdersWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) =>
              const Center(child: CircularProgressIndicator()),
          loadSuccess: (state) {
            return ListView.separated(
              itemCount: state.orders.length,
              itemBuilder: (BuildContext context, int index) {
                if (state.orders[index].failureOption.isSome()) {
                  return ErrorOrderItemCard(state.orders[index]);
                }
                return OrderItemCard(state.orders[index]);
              },
              separatorBuilder: (BuildContext context, int index) {
                return const Divider(
                  color: Colors.black38,
                  thickness: 1,
                );
              },
            );
          },
          loadFailure: (state) => CriticalFailureDisplay(
            state.failure,
          ),
        );
      },
    );
  }
}
