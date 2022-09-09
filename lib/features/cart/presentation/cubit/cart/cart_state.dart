part of 'cart_cubit.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.initial() = _Initial;
  const factory CartState.cartItemLoadInProgress() = _CartItemLoadProgress;
  const factory CartState.cartItemLoadSuccess(List<CartItem> cartItems) = _CartItemLoadSuccess;
  const factory CartState.cartItemLoadFailure(Failure failure) =
  _CartItemLoadFailure;
  const factory CartState.cartItemUpdateInProgress() = _CartItemUpdateInProgress;
  const factory CartState.cartItemUpdated(List<CartItem> cartItems) = _CartItemUpdated;

  const factory CartState.cartItemDeleteInProgress() = _CartItemDeleteInProgress;
  const factory CartState.cartItemDeleteSuccess() = _CartItemDeleteSuccess;
  const factory CartState.cartItemDeleteFailure(Failure failure) = _CartItemDeleteFailure;

  const factory CartState.cartClearInProgress() = _CartClearInProgress;
  const factory CartState.cartClearSuccess() = _CartClearSuccess;
  const factory CartState.cartClearFailure(Failure failure) = _CartClearFailure;

}
