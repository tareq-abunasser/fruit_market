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
  ) : super(const CartWatcherState.initial());
  final GetCartItems _getCartItems;
  List<CartItem> _cartItems = [];

  void watchCart() {
    emit(const CartWatcherState.cartItemLoadInProgress());
    _getCartItems().then((failureOrProducts) => failureOrProducts
            .fold((f) => emit(CartWatcherState.cartItemLoadFailure(f)), (items) {
          double totalPrice = calculateTotalPrice(items);
          _cartItems = items;
          emit(CartWatcherState.cartItemLoadSuccess(items, totalPrice));
        }));
  }

  void watchCartAfterUpdate(List<CartItem> items) {
    emit(const CartWatcherState.cartItemLoadInProgress());
    double totalPrice = calculateTotalPrice(items);
    emit(CartWatcherState.cartItemLoadSuccess(items, totalPrice));
  }

  double calculateTotalPrice(List<CartItem> _cartItems) {
    double totalPrice = 0;
    for (var element in _cartItems) {
      if (element.product.price.isValid() && element.quantity.isValid()) {
        totalPrice +=
            element.product.price.getOrCrash() * element.quantity.getOrCrash();
      }
    }
    return totalPrice.roundToDouble();
  }
  get cartItems => _cartItems;
  @override
  Future<void> close() {
    return super.close();
  }
}
