import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_market/features/orders/presentation/cubit/orders_actor/orders_actor_cubit.dart';
import 'package:fruit_market/injection.dart';
import 'package:get/get.dart';

import '../../../../core/widgets/critical_failure_display_widget.dart';
import '../cubit/orders_watcher/orders_watcher_cubit.dart';
import '../widgets/error_order_item_card.dart';
import '../widgets/order_item_card.dart';
import '../widgets/orders_body.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<OrdersWatcherCubit>()..watchOrders(),
        ),
        BlocProvider(
          create: (context) => getIt<OrdersActorCubit>(),
        ),
      ],
      child: BlocListener<OrdersActorCubit, OrdersActorState>(
          listener: (context, state) {
            state.mapOrNull(
              actionFailure: (state) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      state.failure.map(
                        serverError: (_) => 'Server Failure',
                        cacheError: (_) => 'Cache Failure',
                        internet: (_) => 'No internet connection',
                      ),
                    ),
                    backgroundColor: Colors.red,
                  ),
                );
              },
              actionSuccess: (state) {},
            );
          },
          child: Scaffold(
            appBar: AppBar(title: Text("My Orders".tr)),
            body: const OrdersBody(),
          )),
    );
  }
}
