part of 'orders_actor_cubit.dart';

@freezed
class OrdersActorState with _$OrdersActorState {
  const factory OrdersActorState.initial() = _Initial;

  const factory OrdersActorState.actionInProgress() = _ActionInProgress;

  const factory OrdersActorState.actionSuccess() =
  _ActionSuccess;

  const factory OrdersActorState.actionFailure(Failure failure) = _ActionFailure;
}

