part of 'favourite_watcher_cubit.dart';

@freezed
class FavouriteWatcherState with _$FavouriteWatcherState {
  const factory FavouriteWatcherState.initial() = _Initial;
  const factory FavouriteWatcherState.actionInProgress() = _ActionInProgress;
  const factory FavouriteWatcherState.watchSuccess(List<FavouriteItem> favouriteItems) = _WatchSuccess;
  const factory FavouriteWatcherState.watchFailure(Failure failure) =
  _WatchFailure;
}
