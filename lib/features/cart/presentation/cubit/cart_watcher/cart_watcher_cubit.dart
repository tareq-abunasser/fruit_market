import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fruit_market/features/cart/domain/entities/cart_item.dart';
import 'package:injectable/injectable.dart';
import '../../../../../../core/entities/failures.dart';
import '../../../domain/usecases/add_cart_item.dart';
import '../../../domain/usecases/get_cart_items.dart';

part 'cart_watcher_state.dart';

part 'cart_watcher_cubit.freezed.dart';

@injectable
class CartWatcherCubit extends Cubit<CartWatcherState> {
  CartWatcherCubit( this._getCartItems)
      : super(const CartWatcherState.initial());
  final GetCartItems _getCartItems;
  List<CartItem> _cartItems = [];

  get cartItems => _cartItems;

  void watchCart() {
    emit(const CartWatcherState.cartItemLoadInProgress());
    _getCartItems().then((failureOrProducts) => failureOrProducts
            .fold((f) => emit(CartWatcherState.cartItemLoadFailure(f)), (products) {
          _cartItems = products;
          emit(CartWatcherState.cartItemLoadSuccess(products));
        }));
  }

}
