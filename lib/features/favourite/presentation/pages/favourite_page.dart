import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../../injection.dart';
import '../cubit/favourite_watcher/favourite_watcher_cubit.dart';
import '../cubit/favourite_actor/favourite_actor_cubit.dart';
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
            create: (context) =>
                getIt<FavouriteWatcherCubit>()..watchFavouriteItems(),
          ),
          BlocProvider(
            create: (context) => getIt<FavouriteActorCubit>(),
          ),
        ],
        child: BlocListener<FavouriteActorCubit, FavouriteActorState>(
            listener: (context, state) {
              state.mapOrNull(
                deleteFailure: (state) {
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
                deleteSuccess: (state) {
                  context
                      .read<FavouriteWatcherCubit>()
                      .deleteFavoriteItem(state.index);
                },
              );
            },
            child: Scaffold(
              appBar: AppBar(
                title: const Text("Favourites"),
              ),
              body: BlocBuilder<FavouriteWatcherCubit, FavouriteWatcherState>(
                builder: (context, state) {
                  return state.map(
                    initial: (_) => Container(),
                    actionInProgress: (_) => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    watchSuccess: (state) {
                      return state.favouriteItems.isEmpty
                          ? const FavouriteProductEmpty()
                          : ListView.separated(
                              itemBuilder: (context, index) {
                                final product = state.favouriteItems[index];
                                if (product.failureOption.isSome()) {
                                  return ErrorFavouriteProductCard(product);
                                } else {
                                  return FavouriteProductCard(product, index);
                                }
                              },
                              separatorBuilder:
                                  (BuildContext context, int index) {
                                return const Divider(
                                  color: Color(0xFFD1D1D1),
                                  thickness: 1,
                                );
                              },
                              itemCount: state.favouriteItems.length,
                            );
                    },
                    watchFailure: (state) {
                      return CriticalFailureDisplay(
                        state.failure,
                      );
                    },
                  );
                },
              ),
            )));
  }
}
