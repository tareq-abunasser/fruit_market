import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_market/features/orders/presentation/cubit/orders_cubit.dart';
import 'package:fruit_market/injection.dart';
import 'package:get/get.dart';

import '../../../../core/widgets/critical_failure_display_widget.dart';
import '../widgets/order_item.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<OrdersCubit>()..watchOrders(),
      child: BlocConsumer<OrdersCubit, OrdersState>(
        listener:  (context, state) {
          //  state.mapOrNull(
          //   loadInProgress: (_) => Center(
          //     child: CircularProgressIndicator(),
          //   ),
          //   loadFailure: (failure) => CriticalFailureDisplayWidget(
          //     failure: failure,
          //   ),
          //   loadSuccess: (orders) => Get.snackbar("Success", "Orders"),
          // );
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(title: Text("My Orders".tr)),
            body: state.map(
              initial: (_) => Container(),
              loadInProgress: (_) =>
                  const Center(child: CircularProgressIndicator()),
              loadSuccess: (state) {
                return ListView.separated(
                  itemCount: state.orders.length,
                  itemBuilder: (BuildContext context, int index) {
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
            ),
          );
        },
      ),
    );
  }
}
