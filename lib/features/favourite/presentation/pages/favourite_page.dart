import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../injection.dart';
import '../../../cart/presentation/cubit/cart_watcher/cart_watcher_cubit.dart';
import '../cubit/favourite/favourite_cubit.dart';
import '../widgets/critical_failure_display_widget.dart';
import '../widgets/error_favourite_product.dart';
import '../widgets/favourite_product_card.dart';
import '../widgets/favourite_product_empty.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
  providers: [
    BlocProvider(
      create: (context) => getIt<FavouriteCubit>()..watchFavouriteProducts(),
),
  ],
  child: BlocConsumer<FavouriteCubit, FavouriteState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              title: const Text("Favourites"),
              backgroundColor: Theme.of(context).primaryColor,
            ),
            body: state.map(
              initial: (_) => Container(),
              favouriteItemsLoadInProgress: (_) => const Center(
                child: CircularProgressIndicator(),
              ),
              favouriteItemsLoadSuccess: (state) {
                return state.products.isEmpty
                    ? const FavouriteProductEmpty()
                    : ListView.separated(
                        itemBuilder: (context, index) {
                          final product = state.products[index];
                          if (product.failureOption.isSome()) {
                            return ErrorFavouriteProductCard(product);
                          } else {
                            return FavouriteProductCard(product);
                          }
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return const Divider(
                            color: Color(0xFFD1D1D1),
                            thickness: 1,
                          );
                        },
                        itemCount: state.products.length,
                      );
              },
              favouriteItemsLoadFailure: (state) {
                return CriticalFailureDisplay(
                  state.homeFailure,
                );
              },
            ),
          );
        },
      ),
);
  }
}
