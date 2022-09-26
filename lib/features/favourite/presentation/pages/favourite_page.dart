import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../injection.dart';
import '../cubit/favourite_watcher/favourite_watcher_cubit.dart';
import '../cubit/favourite_actor/favourite_actor_cubit.dart';
import '../widgets/favourite_body.dart';

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
              body: const FavouriteBody(),
            )));
  }
}
