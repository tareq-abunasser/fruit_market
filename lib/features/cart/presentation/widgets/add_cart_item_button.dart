import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/custom_text_field.dart';
import '../../../../injection.dart';
import '../../domain/entities/cart_item.dart';
import '../cubit/cart_actor/cart_actor_cubit.dart';
import '../cubit/cart_watcher/cart_watcher_cubit.dart';

class AddCartItemButton extends StatelessWidget {
  const AddCartItemButton(
      {Key? key, required this.onPressed, required this.cartItem})
      : super(key: key);
  final VoidCallback? onPressed;
  final CartItem cartItem;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:  (context) => getIt<CartActorCubit>(),
      child: BlocBuilder<CartActorCubit, CartActorState>(
        builder: (context, state) {
          return MaterialButton(
            onPressed: () {
              context.read<CartActorCubit>().addToCart(cartItem);
              onPressed?.call();
            },
            color: const Color(0xffCC7D00),
            child: const CustomText(
              color: Colors.white,
              text: "Add",
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)),
          );
        },
      ),
    );
  }
}
