import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_market/features/cart/presentation/widgets/error_cart_card.dart';
import 'package:get/get.dart';

import '../../../../core/services/size_config.dart';
import '../../../../core/widgets/custom_buttons.dart';
import '../../../../core/widgets/custom_text_field.dart';
import '../../../../injection.dart';
import '../../../account/presentation/widgets/address_widget.dart';
import '../cubit/cart/cart_cubit.dart';
import '../widgets/cart_empty.dart';
import '../widgets/cart_item_cart.dart';
import '../widgets/critical_failure_display_widget.dart';

class ShoppingCartPage extends StatelessWidget {
  const ShoppingCartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CartCubit>()..watchCart(),
      child: BlocConsumer<CartCubit, CartState>(
        listener: (context, state) {
          state.mapOrNull(
            cartClearFailure: (failure) =>
                Get.snackbar("Error", "Error to add data to orders"),
          );
        },
        builder: (context, state) {
          return Scaffold(
              appBar: AppBar(
                title: Text("shoppingCart".tr),
              ),
              body: Column(children: [
                const AddressWidget(),
                context.watch<CartCubit>().cartItems.isEmpty
                    ? state.maybeMap(
                        cartItemLoadInProgress: (_) =>
                            const Center(child: CircularProgressIndicator()),
                        cartItemLoadFailure: (state) => CriticalFailureDisplay(
                          state.failure,
                        ),
                        cartItemLoadSuccess: (_) =>
                            const Expanded(child: CartEmpty()),
                        cartClearSuccess: (_) =>
                            const Expanded(child: CartEmpty()),
                        orElse: () => Container(),
                      )
                    : Expanded(
                        child: Column(
                          children: [
                            Expanded(
                              child: ListView.separated(
                                key: const PageStorageKey<String>("cart"),
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  final cartItem = context
                                      .watch<CartCubit>()
                                      .cartItems[index];
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
                                itemCount:
                                    context.watch<CartCubit>().cartItems.length,
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
                                      text:
                                          " ${context.watch<CartCubit>().totalPrice} Per/ kg",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                    const Spacer(),
                                    CustomGeneralButton(
                                      onTap: () {
                                        context.read<CartCubit>().clearCart();
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
                      ),
              ]));
        },
      ),
    );
  }
}

//
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:fruit_market/features/cart/presentation/widgets/error_cart_card.dart';
// import 'package:get/get.dart';
//
// import '../../../../core/utils/size_config.dart';
// import '../../../../core/widgets/custom_buttons.dart';
// import '../../../../core/widgets/custom_text_field.dart';
// import '../../../../injection.dart';
// import '../../../account/presentation/widgets/address_widget.dart';
// import '../../domain/entities/cart_item.dart';
// import '../cubit/cart_actor/cart_actor_cubit.dart';
// import '../cubit/cart_watcher/cart_watcher_cubit.dart';
// import '../widgets/cart_empty.dart';
// import '../widgets/cart_item_cart.dart';
// import '../widgets/critical_failure_display_widget.dart';
// import '../widgets/group_cart_item.dart';
//
// class ShoppingCartPage extends StatelessWidget {
//   const ShoppingCartPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => getIt<CartCubit>()..watchCart(),
//       child: BlocConsumer<CartCubit, CartState>(
//         listener: (context, state) {},
//         builder: (context, state) {
//           return Scaffold(
//               appBar: AppBar(title: Text("shoppingCart".tr)),
//               body: Column(
//                 children: [
//                   const AddressWidget(),
//                   state.map(
//                     initial: (_) => Container(),
//                     cartItemLoadInProgress: (_) => const Center(
//                       child: CircularProgressIndicator(),
//                     ),
//                     cartItemLoadFailure: (state) {
//                       return CriticalFailureDisplay(
//                         state.failure,
//                       );
//                     },
//                     cartItemLoadSuccess: (state) {
//                       return state.cartItems.isEmpty
//                           ? const Expanded(child: CartEmpty())
//                           : Expanded(
//                         child: Column(
//                           children: [
//                             Expanded(
//                               child: ListView.separated(
//                                 key: const PageStorageKey<String>("cart"),
//                                 shrinkWrap: true,
//                                 itemBuilder: (context, index) {
//                                   final cartItem = state.cartItems[index];
//                                   if (cartItem.failureOption.isSome()) {
//                                     return ErrorCartCard(cartItem);
//                                   } else {
//                                     return CartItemCard(cartItem,index);
//                                   }
//                                 },
//                                 separatorBuilder:
//                                     (BuildContext context, int index) {
//                                   return const Divider(
//                                     color: Color(0xFFD1D1D1),
//                                     thickness: 1,
//                                     height: 3,
//                                   );
//                                 },
//                                 itemCount: state.cartItems.length,
//                               ),
//                             ),
//                             Align(
//                               alignment: FractionalOffset.bottomCenter,
//                               child: Padding(
//                                 padding: const EdgeInsetsDirectional.only(
//                                   bottom: 25,
//                                   start: 20,
//                                   end: 20,
//                                   top: 8,
//                                 ),
//                                 child: Row(
//                                   children: [
//                                     CustomText(
//                                       text:
//                                       " ${getTotalPrice(state.cartItems)} Per/ kg",
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 16,
//                                     ),
//                                     const Spacer(),
//                                     CustomGeneralButton(
//                                       onTap: () {},
//                                       text: 'buyNow'.tr,
//                                       width:
//                                       SizeConfig.screenWidth! * 0.33,
//                                       height: 50,
//                                     )
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       );
//                     }, cartItemUpdated: (state){
//                     return state.cartItems.isEmpty
//                         ? const Expanded(child: CartEmpty())
//                         : Expanded(
//                       child: Column(
//                         children: [
//                           Expanded(
//                             child: ListView.separated(
//                               key: const PageStorageKey<String>("cart"),
//                               shrinkWrap: true,
//                               itemBuilder: (context, index) {
//                                 final cartItem = state.cartItems[index];
//                                 if (cartItem.failureOption.isSome()) {
//                                   return ErrorCartCard(cartItem);
//                                 } else {
//                                   return CartItemCard(cartItem,index);
//                                 }
//                               },
//                               separatorBuilder:
//                                   (BuildContext context, int index) {
//                                 return const Divider(
//                                   color: Color(0xFFD1D1D1),
//                                   thickness: 1,
//                                   height: 3,
//                                 );
//                               },
//                               itemCount: state.cartItems.length,
//                             ),
//                           ),
//                           Align(
//                             alignment: FractionalOffset.bottomCenter,
//                             child: Padding(
//                               padding: const EdgeInsetsDirectional.only(
//                                 bottom: 25,
//                                 start: 20,
//                                 end: 20,
//                                 top: 8,
//                               ),
//                               child: Row(
//                                 children: [
//                                   CustomText(
//                                     text:
//                                     " ${getTotalPrice(state.cartItems)} Per/ kg",
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 16,
//                                   ),
//                                   const Spacer(),
//                                   CustomGeneralButton(
//                                     onTap: () {},
//                                     text: 'buyNow'.tr,
//                                     width:
//                                     SizeConfig.screenWidth! * 0.33,
//                                     height: 50,
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     );
//                   },
//
//                   ),
//                 ],
//               ));
//         },
//       ),
//     );
//   }
//
//   double getTotalPrice(List<CartItem> cartItems) {
//     double totalPrice = 0;
//     for (var element in cartItems) {
//       if (element.currentPrice.isValid()) {
//         totalPrice += element.currentPrice.getOrCrash();
//       }
//     }
//     return totalPrice.ceilToDouble();
//   }
// }
