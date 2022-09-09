import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fruit_market/features/cart/domain/entities/cart_item.dart';
import 'package:fruit_market/features/cart/domain/usecases/add_orders_item_from_cart.dart';
import 'package:injectable/injectable.dart';
import '../../../../../../core/entities/failures.dart';
import '../../../domain/entities/value_objects.dart';
import '../../../domain/usecases/add_cart_item.dart';
import '../../../domain/usecases/clear_cart.dart';
import '../../../domain/usecases/get_cart_items.dart';
import '../../../domain/usecases/remove_cart_item.dart';
import '../../../domain/usecases/update_cart.dart';

part 'cart_state.dart';

part 'cart_cubit.freezed.dart';

@injectable
class CartCubit extends Cubit<CartState> {
  CartCubit(
    this._getCartItems,
    this._updateCart,
    this._removeCartItem,
    this._clearCart,
    this._addOrderItems,
  ) : super(const CartState.initial());
  final GetCartItems _getCartItems;
  final UpdateCart _updateCart;
  final RemoveCartItem _removeCartItem;
  final ClearCart _clearCart;
  final AddOrderItemsFomCart _addOrderItems;
  List<CartItem> _cartItems = [];
  double _totalPrice = 0;

  void watchCart() {
    emit(const CartState.cartItemLoadInProgress());
    _getCartItems().then((failureOrProducts) => failureOrProducts
            .fold((f) => emit(CartState.cartItemLoadFailure(f)), (products) {
          _cartItems = products;
          print('watchCart ${_cartItems}');

          updateTotalPrice();
          print('watchCart products ${products}');
          emit(CartState.cartItemLoadSuccess(products));
        }));
  }

  void increaseCartItemQuantity(int index) {
    emit(const CartState.cartItemUpdateInProgress());
    _cartItems[index] = _cartItems[index].copyWith(
        quantity: Quantity(_cartItems[index].quantity.getOrCrash() + 1));
    updateTotalPrice();
    emit(CartState.cartItemUpdated(_cartItems));
  }

  void decreaseCartItemQuantity(int index) {
    if (_cartItems[index].quantity.getOrCrash() > 1) {
      emit(const CartState.cartItemUpdateInProgress());
      _cartItems[index] = _cartItems[index].copyWith(
          quantity: Quantity(_cartItems[index].quantity.getOrCrash() - 1));

      emit(CartState.cartItemUpdated(_cartItems));
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
    emit(const CartState.cartItemDeleteInProgress());
    _removeCartItem(_cartItems[index]).then((failureOrUnit) => failureOrUnit
            .fold((f) => emit(CartState.cartItemDeleteFailure(f)), (_) {
          _cartItems.removeAt(index);
          updateTotalPrice();
          emit(const CartState.cartItemDeleteSuccess());
        }));
  }

  void clearCart() {
    emit(const CartState.cartClearInProgress());
    _clearCart().then((failureOrUnit) =>
        failureOrUnit.fold((f) => emit(CartState.cartClearFailure(f)), (_) {
          print('cart cleared ${_cartItems}');
          _addOrderItems(_cartItems);
          _cartItems.clear();
          _totalPrice = 0;
          emit(const CartState.cartClearSuccess());
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
