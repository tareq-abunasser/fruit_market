import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fruit_market/features/cart/domain/entities/cart_item.dart';
import 'package:fruit_market/features/cart/domain/usecases/update_cart_item.dart';
import 'package:injectable/injectable.dart';
import '../../../../../../core/entities/failures.dart';
import '../../../domain/entities/value_objects.dart';
import '../../../domain/usecases/add_cart_item.dart';
import '../../../domain/usecases/add_orders_item_from_cart.dart';
import '../../../domain/usecases/clear_cart.dart';
import '../../../domain/usecases/get_cart_items.dart';
import '../../../domain/usecases/remove_cart_item.dart';
import '../../../domain/usecases/update_cart.dart';

part 'cart_actor_state.dart';

part 'cart_actor_cubit.freezed.dart';

@injectable
class CartActorCubit extends Cubit<CartActorState> {
  CartActorCubit(
    this._addCartItem,
    this._clearCart,
    // this._addOrderItems,
    this._removeCartItem,
    this._updateCartItem,
  ) : super(const CartActorState.initial());
  final AddCartItem _addCartItem;
  final ClearCart _clearCart;

  // final AddOrderItemsFomCart _addOrderItems;
  final RemoveCartItem _removeCartItem;
  final UpdateCartItem _updateCartItem;
  List<CartItem> _cartItems = [];

  void init(List<CartItem> cartItems) {
    _cartItems = cartItems;
  }

  void addToCart(CartItem cartItem) {
    const CartActorState.addItemLoadInProgress();
    _addCartItem(cartItem).then((failureOrUnit) => failureOrUnit.fold(
        (f) => emit(CartActorState.addItemFailure(f)),
        (unit) => emit(const CartActorState.addItemSuccess())));
  }

  void clearCart() {
    emit(const CartActorState.actionInProgress());
    _clearCart().then((failureOrUnit) =>
        failureOrUnit.fold((f) => emit(CartActorState.actionFailure(f)), (_) {
          _cartItems.clear();
          // _addOrderItems(items);
          emit(CartActorState.actionSuccess(_cartItems));
        }));
  }

  void deleteCartItem(CartItem item) {
    emit(const CartActorState.actionInProgress());
    _removeCartItem(item).then((failureOrUnit) =>
        failureOrUnit.fold((f) => emit(CartActorState.actionFailure(f)), (_) {
          _cartItems.remove(item);
          emit(CartActorState.actionSuccess(_cartItems));
        }));
  }

  void increaseCartItemQuantity(CartItem item) {
    emit(const CartActorState.actionInProgress());
    CartItem cartItem =
        item.copyWith(quantity: Quantity(item.quantity.getOrCrash() + 1));
    _updateCartItem(cartItem).then((failureOrUnit) =>
        failureOrUnit.fold((f) => emit(CartActorState.actionFailure(f)), (_) {
          _cartItems[_cartItems.indexOf(item)] = cartItem;
          emit(CartActorState.actionSuccess(_cartItems));
        }));
  }

  void decreaseCartItemQuantity(CartItem item) {
    emit(const CartActorState.actionInProgress());
    if (item.quantity.getOrCrash() > 1) {
      CartItem cartItem =
          item.copyWith(quantity: Quantity(item.quantity.getOrCrash() - 1));
      _updateCartItem(cartItem).then((failureOrUnit) =>
          failureOrUnit.fold((f) => emit(CartActorState.actionFailure(f)), (_) {
            _cartItems[_cartItems.indexOf(item)] = cartItem;
            emit(CartActorState.actionSuccess(_cartItems));
          }));
    }
  }
}
