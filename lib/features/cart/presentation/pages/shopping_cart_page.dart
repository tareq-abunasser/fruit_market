import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_market/features/cart/presentation/widgets/error_cart_card.dart';

import '../../../../core/utils/size_config.dart';
import '../../../../core/widgets/custom_text_field.dart';
import '../../../../injection.dart';
import '../cubit/cart_actor/cart_actor_cubit.dart';
import '../cubit/cart_watcher/cart_watcher_cubit.dart';
import '../widgets/cart_empty.dart';
import '../widgets/cart_item_cart.dart';
import '../widgets/critical_failure_display_widget.dart';
import '../widgets/group_cart_item.dart';

class ShoppingCartPage extends StatelessWidget {
  const ShoppingCartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CartWatcherCubit>()..watchCart(),
      child: BlocConsumer<CartWatcherCubit, CartWatcherState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
              appBar: AppBar(
                  title: const Text("Shopping Cart"),
                  backgroundColor: Theme.of(context).primaryColor),
              body: Column(
                children: [
                  Row(
                    children: [
                      const Icon(Icons.location_on),
                      const Text(
                        "Deliver to Palestine Gaza  32222",
                        overflow: TextOverflow.clip,
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: const CustomText(
                          text: "Change Your Info",
                          color: Color(0xff7089F0),
                        ),
                      )
                    ],
                  ),
                  state.map(
                    initial: (_) => Container(),
                    cartItemLoadInProgress: (_) => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    cartItemLoadSuccess: (state) {
                      return state.cartItems.isEmpty
                          ? const CartEmpty()
                          : Expanded(
                              child: ListView.separated(
                                key: const PageStorageKey<String>("cart"),
                                itemBuilder: (context, index) {
                                  final cartItem = state.cartItems[index];
                                  if (cartItem.failureOption.isSome()) {
                                    return ErrorCartCard(cartItem);
                                  } else {
                                    return CartItemCard(cartItem);
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
                            );
                    },
                    cartItemLoadFailure: (state) {
                      return CriticalFailureDisplay(
                        state.failure,
                      );
                    },
                  ),
                ],
              ));
        },
      ),
    );
  }
}

//Scaffold(
//             appBar: AppBar(
//               automaticallyImplyLeading: false,
//               title: const Text("Favourites"),
//               backgroundColor: Theme.of(context).primaryColor,
//             ),
//             body: state.map(
//               initial: (_) => Container(),
//               productsLoadInProgress: (_) => const Center(
//                 child: CircularProgressIndicator(),
//               ),
//               productsLoadSuccess: (state) {
//                 return state.products.isEmpty
//                     ? const FavouriteProductEmpty()
//                     : ListView.separated(
//                         itemBuilder: (context, index) {
//                           final product = state.products[index];
//                           if (product.failureOption.isSome()) {
//                             return ErrorFavouriteProductCard(product);
//                           } else {
//                             return FavouriteProductCard(product);
//                           }
//                         },
//                         separatorBuilder: (BuildContext context, int index) {
//                           return const Divider(
//                             color: Color(0xFFD1D1D1),
//                             thickness: 1,
//                           );
//                         },
//                         itemCount: state.products.length,
//                       );
//               },
//               productsLoadFailure: (state) {
//                 return CriticalFailureDisplay(
//                   state.homeFailure,
//                 );
//               },
//             ),
//           );
