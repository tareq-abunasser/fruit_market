part of 'orders_cubit.dart';

@freezed
class OrdersState with _$OrdersState {
  const factory OrdersState.initial() = _Initial;

  const factory OrdersState.loadInProgress() = _LoadInProgress;

  const factory OrdersState.loadSuccess(List<OrderItem> orders) =
  _LoadSuccess;

  const factory OrdersState.loadFailure(Failure failure) = _LoadFailure;
}

