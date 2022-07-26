part of 'favourite_cubit.dart';

@freezed
class FavouriteState with _$FavouriteState {
  const factory FavouriteState.initial() = _Initial;
  const factory FavouriteState.productsLoadInProgress() = _ProductsLoadProgress;
  const factory FavouriteState.productsLoadSuccess(List<Product> products) = _ProductsLoadSuccess;
  const factory FavouriteState.productsLoadFailure(HomeFailure homeFailure) =
  _ProductsLoadFailure;
}
