part of 'cart_watcher_cubit.dart';

@freezed
class CartWatcherState with _$CartWatcherState {
  const factory CartWatcherState.initial() = _Initial;
  const factory CartWatcherState.cartItemLoadInProgress() = _CartItemLoadProgress;
  const factory CartWatcherState.cartItemLoadSuccess(List<CartItem> cartItems) = _CartItemLoadSuccess;
  const factory CartWatcherState.cartItemLoadFailure(Failure failure) =
  _CartItemLoadFailure;

}
