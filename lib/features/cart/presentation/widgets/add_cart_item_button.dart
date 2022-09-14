import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../../core/widgets/custom_text_field.dart';
import '../../../../injection.dart';
import '../../../favourite/domain/entities/favourite_item.dart';
import '../../domain/entities/cart_item.dart';
import '../cubit/cart_actor/cart_actor_cubit.dart';

class AddCartItemButton extends StatelessWidget {
  const AddCartItemButton({
    Key? key,
    required this.onPressed,
    required this.quantity,
    required this.favouriteItem,
  }) : super(key: key);
  final VoidCallback? onPressed;
  final FavouriteItem favouriteItem;
  final int quantity;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CartActorCubit>(),
      child: BlocBuilder<CartActorCubit, CartActorState>(
          builder: (context, state) {
        return MaterialButton(
          onPressed: () {
            print('MaterialButton');
            print('quantity: $quantity');
            context
                .read<CartActorCubit>()
                .addToCart(CartItem.fromFavourite(favouriteItem, quantity));
            onPressed?.call();
          },
          color: const Color(0xffCC7D00),
          child: CustomText(
            color: Colors.white,
            text: "Add".tr,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        );
      }),
    );
  }
}
