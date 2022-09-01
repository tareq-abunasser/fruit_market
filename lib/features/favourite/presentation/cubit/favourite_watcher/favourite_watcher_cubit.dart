import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fruit_market/features/favourite/domain/entities/favourite_item.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/entities/failures.dart';
import '../../../domain/usecases/delete_favourite_item.dart';
import '../../../domain/usecases/get_favourite_items.dart';

part 'favourite_watcher_state.dart';

part 'favourite_watcher_cubit.freezed.dart';

@injectable
class FavouriteWatcherCubit extends Cubit<FavouriteWatcherState> {
  FavouriteWatcherCubit(this._favouriteItems) : super(const FavouriteWatcherState.initial());
  final GetFavouriteItems _favouriteItems;
  List<FavouriteItem> listFavouritesItems = [];

  void watchFavouriteItems() {
    emit(const FavouriteWatcherState.actionInProgress());
    _favouriteItems().then((failureOrProducts) => failureOrProducts
            .fold((f) => emit(FavouriteWatcherState.watchFailure(f)),
                (products) {
          listFavouritesItems.addAll(products);
          emit(FavouriteWatcherState.watchSuccess(products));
        }));
  }

  List<FavouriteItem> get favouriteItems => listFavouritesItems;

  void deleteFavoriteItem(int index) {
    emit(const FavouriteWatcherState.actionInProgress());
    listFavouritesItems.removeAt(index);
    emit(FavouriteWatcherState.watchSuccess(listFavouritesItems));
  }
}
