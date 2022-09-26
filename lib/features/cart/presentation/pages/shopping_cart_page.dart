import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_market/features/cart/domain/entities/cart_item.dart';
import 'package:fruit_market/features/cart/presentation/cubit/cart_actor/cart_actor_cubit.dart';
import 'package:get/get.dart';
import '../../../../injection.dart';
import '../cubit/cart_watcher/cart_watcher_cubit.dart';
import '../widgets/shopping_cart_body.dart';

class ShoppingCartPage extends StatelessWidget {
  const ShoppingCartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<CartWatcherCubit>()..watchCart(),
        ),
        BlocProvider(
          create: (context) => getIt<CartActorCubit>(),
        ),
      ],
      child: BlocListener<CartActorCubit, CartActorState>(
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
            actionSuccess: (state) {
              context.read<CartWatcherCubit>().watchCartAfterUpdate(state.cartItems);
            },
          );
        },
        child: Scaffold(
          appBar: AppBar(
            title: Text("shoppingCart".tr),
          ),
          body: const ShoppingCartBody(),
        ),
      ),
    );
  }
}
