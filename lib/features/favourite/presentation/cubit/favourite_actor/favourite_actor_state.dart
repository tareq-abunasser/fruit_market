part of 'cart_actor_cubit.dart';

@freezed
class CartActorState with _$CartActorState {
  const factory CartActorState.initial() = _Initial;
  const factory CartActorState.addToCartLoadInProgress() = _AddToCartLoadInProgress;
  const factory CartActorState.addToCartSuccess() = _AddToCartSuccess;
  const factory CartActorState.addToCartFailure(Failure failure) =
  _AddToCartFailure;

}
