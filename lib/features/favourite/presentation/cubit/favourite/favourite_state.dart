part of 'favourite_cubit.dart';

@freezed
class FavouriteState with _$FavouriteState {
  const factory FavouriteState.initial() = _Initial;
  const factory FavouriteState.favouriteItemsLoadInProgress() = _FavouriteItemsLoadProgress;
  const factory FavouriteState.favouriteItemsLoadSuccess(List<FavouriteItem> products) = _FavouriteItemsLoadSuccess;
  const factory FavouriteState.favouriteItemsLoadFailure(Failure homeFailure) =
  _FavouriteItemsLoadFailure;
}
