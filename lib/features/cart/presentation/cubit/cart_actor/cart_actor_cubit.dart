import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fruit_market/features/cart/domain/entities/cart_item.dart';
import 'package:injectable/injectable.dart';
import '../../../../../../core/entities/failures.dart';
import '../../../domain/usecases/add_cart_item.dart';
import '../../../domain/usecases/get_cart_items.dart';

part 'cart_actor_state.dart';

part 'cart_actor_cubit.freezed.dart';

@injectable
class CartActorCubit extends Cubit<CartActorState> {
  CartActorCubit(this._addCartItem)
      : super(const CartActorState.initial());
  final AddCartItem _addCartItem;


  void addToCart(CartItem cartItem) {
    const CartActorState.addToCartLoadInProgress();
    _addCartItem(cartItem).then((failureOrUnit) => failureOrUnit.fold(
        (f) => emit(CartActorState.addToCartFailure(f)),
        (unit) => emit(const CartActorState.addToCartSuccess())));
  }
}
