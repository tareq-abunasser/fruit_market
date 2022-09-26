part of 'cart_actor_cubit.dart';

@freezed
class CartActorState with _$CartActorState {
  const factory CartActorState.initial() = _Initial;

  const factory CartActorState.addItemLoadInProgress() = _AddItemLoadInProgress;

  const factory CartActorState.addItemSuccess() = _AddItemSuccess;

  const factory CartActorState.addItemFailure(Failure failure) =
      _AddItemFailure;

  //********************************************//
  const factory CartActorState.actionInProgress() = _actionInProgress;
  const factory CartActorState.actionSuccess(List<CartItem> cartItems) =
  _ActionSuccess;

  const factory CartActorState.actionFailure(Failure failure) =
  _ActionFailure;
}
