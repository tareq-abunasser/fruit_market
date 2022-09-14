import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_market/features/cart/presentation/cubit/cart_actor/cart_actor_cubit.dart';
import 'package:get/get.dart';

import '../../../../core/services/size_config.dart';
import '../../../../core/widgets/critical_failure_display_widget.dart';
import '../../../../core/widgets/custom_buttons.dart';
import '../../../../core/widgets/custom_text_field.dart';
import '../../../account/presentation/widgets/address_widget.dart';
import '../cubit/cart_watcher/cart_watcher_cubit.dart';
import 'cart_empty.dart';
import 'cart_item_cart.dart';
import 'error_cart_card.dart';

class ShoppingCartBody extends StatelessWidget {
  const ShoppingCartBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AddressWidget(),
        BlocBuilder<CartWatcherCubit, CartWatcherState>(
          builder: (context, state) {
            return state.map(
              initial: (_) => Container(),
              cartItemLoadInProgress: (_) =>
                  const Center(child: CircularProgressIndicator()),
              cartItemLoadSuccess: (state) {
                context.read<CartActorCubit>().init(state.cartItems);
                return state.cartItems.isEmpty
                    ? const Expanded(child: CartEmpty())
                    : Expanded(
                        child: Column(
                          children: [
                            Expanded(
                              child: ListView.separated(
                                key: const PageStorageKey<String>("cart"),
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  final cartItem = state.cartItems[index];
                                  if (cartItem.failureOption.isSome()) {
                                    return ErrorCartCard(cartItem);
                                  } else {
                                    return CartItemCard(cartItem, index);
                                  }
                                },
                                separatorBuilder:
                                    (BuildContext context, int index) {
                                  return const Divider(
                                    color: Color(0xFFD1D1D1),
                                    thickness: 1,
                                    height: 3,
                                  );
                                },
                                itemCount: state.cartItems.length,
                              ),
                            ),
                            Align(
                              alignment: FractionalOffset.bottomCenter,
                              child: Padding(
                                padding: const EdgeInsetsDirectional.only(
                                  bottom: 25,
                                  start: 20,
                                  end: 20,
                                  top: 8,
                                ),
                                child: Row(
                                  children: [
                                    CustomText(
                                      text: " ${state.totalPrice} Per/ kg",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                    const Spacer(),
                                    CustomGeneralButton(
                                      onTap: () {
                                        context
                                            .read<CartActorCubit>()
                                            .clearCart();
                                      },
                                      text: 'buyNow'.tr,
                                      width: SizeConfig.screenWidth! * 0.33,
                                      height: 50,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
              },
              cartItemLoadFailure: (state) => CriticalFailureDisplay(
                state.failure,
              ),
            );
          },
        ),
      ],
    );
  }
}
