import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fruit_market/features/cart/domain/entities/cart_item.dart';
import 'package:injectable/injectable.dart';
import '../../../../../../core/entities/failures.dart';
import '../../../domain/entities/value_objects.dart';
import '../../../domain/usecases/add_cart_item.dart';
import '../../../domain/usecases/clear_cart.dart';
import '../../../domain/usecases/get_cart_items.dart';
import '../../../domain/usecases/remove_cart_item.dart';
import '../../../domain/usecases/update_cart.dart';

part 'cart_watcher_state.dart';

part 'cart_watcher_cubit.freezed.dart';

@injectable
class CartWatcherCubit extends Cubit<CartWatcherState> {
  CartWatcherCubit(
    this._getCartItems,
    this._updateCart,
    this._removeCartItem,
    this._clearCart,
  ) : super(const CartWatcherState.initial());
  final GetCartItems _getCartItems;
  final UpdateCart _updateCart;
  final RemoveCartItem _removeCartItem;
  final ClearCart _clearCart;
  List<CartItem> _cartItems = [];
  double _totalPrice = 0;

  void watchCart() {
    emit(const CartWatcherState.cartItemLoadInProgress());
    _getCartItems().then((failureOrProducts) => failureOrProducts.fold(
            (f) => emit(CartWatcherState.cartItemLoadFailure(f)), (products) {
          _cartItems = products;
          updateTotalPrice();
          emit(CartWatcherState.cartItemLoadSuccess(products));
        }));
  }

  void increaseCartItemQuantity(int index) {
    emit(const CartWatcherState.cartItemUpdateInProgress());
    _cartItems[index] = _cartItems[index].copyWith(
        quantity: Quantity(_cartItems[index].quantity.getOrCrash() + 1));
    updateTotalPrice();
    emit(CartWatcherState.cartItemUpdated(_cartItems));
  }

  void decreaseCartItemQuantity(int index) {
    if (_cartItems[index].quantity.getOrCrash() > 1) {
      emit(const CartWatcherState.cartItemUpdateInProgress());
      _cartItems[index] = _cartItems[index].copyWith(
          quantity: Quantity(_cartItems[index].quantity.getOrCrash() - 1));

      emit(CartWatcherState.cartItemUpdated(_cartItems));
    }
  }

  void updateTotalPrice() {
    _totalPrice = 0;
    for (var element in _cartItems) {
      if (element.currentPrice.isValid() && element.quantity.isValid()) {
        _totalPrice +=
            element.currentPrice.getOrCrash() * element.quantity.getOrCrash();
      }
    }
    _totalPrice = _totalPrice.roundToDouble();
  }

  void removeCartItem(int index) {
    emit(const CartWatcherState.cartItemDeleteInProgress());
    _removeCartItem(_cartItems[index]).then((failureOrUnit) => failureOrUnit
            .fold((f) => emit(CartWatcherState.cartItemDeleteFailure(f)), (_) {
          _cartItems.removeAt(index);
          updateTotalPrice();
          emit(const CartWatcherState.cartItemDeleteSuccess());
        }));
  }

  void clearCart() {
    emit(const CartWatcherState.cartClearInProgress());
    _clearCart().then((failureOrUnit) => failureOrUnit
            .fold((f) => emit(CartWatcherState.cartClearFailure(f)), (_) {
          _cartItems.clear();
          _totalPrice = 0;
          emit(const CartWatcherState.cartClearSuccess());
        }));
    _cartItems.clear();
  }

  List<CartItem> get cartItems => _cartItems;

  double get totalPrice => _totalPrice;

  @override
  Future<void> close() {
    _updateCart(_cartItems);
    return super.close();
  }
}
