part of 'product_cubit.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState.initial() = _Initial;
  const factory ProductState.updateFavoriteProductLoadInProgress() = _UpdateFavoritesLoadInProgress;
  const factory ProductState.updateFavoriteProductLoadInSuccess() = _UpdateFavoriteProductLoadInSuccess;
  const factory ProductState.updateFavoriteProductLoadInFailure(HomeFailure homeFailure) = _UpdateFavoriteProductLoadInFailure;

}
