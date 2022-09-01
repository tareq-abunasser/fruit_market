part of 'cart_watcher_cubit.dart';

@freezed
class CartWatcherState with _$CartWatcherState {
  const factory CartWatcherState.initial() = _Initial;
  const factory CartWatcherState.cartItemLoadInProgress() = _CartItemLoadProgress;
  const factory CartWatcherState.cartItemLoadSuccess(List<CartItem> cartItems) = _CartItemLoadSuccess;
  const factory CartWatcherState.cartItemLoadFailure(Failure failure) =
  _CartItemLoadFailure;
  const factory CartWatcherState.cartItemUpdateInProgress() = _CartItemUpdateInProgress;
  const factory CartWatcherState.cartItemUpdated(List<CartItem> cartItems) = _CartItemUpdated;

  const factory CartWatcherState.cartItemDeleteInProgress() = _CartItemDeleteInProgress;
  const factory CartWatcherState.cartItemDeleteSuccess() = _CartItemDeleteSuccess;
  const factory CartWatcherState.cartItemDeleteFailure(Failure failure) = _CartItemDeleteFailure;

  const factory CartWatcherState.cartClearInProgress() = _CartClearInProgress;
  const factory CartWatcherState.cartClearSuccess() = _CartClearSuccess;
  const factory CartWatcherState.cartClearFailure(Failure failure) = _CartClearFailure;

}
