part of 'orders_watcher_cubit.dart';

@freezed
class OrdersWatcherState with _$OrdersWatcherState {
  const factory OrdersWatcherState.initial() = _Initial;

  const factory OrdersWatcherState.loadInProgress() = _LoadInProgress;

  const factory OrdersWatcherState.loadSuccess(List<OrderItem> orders) =
  _LoadSuccess;

  const factory OrdersWatcherState.loadFailure(Failure failure) = _LoadFailure;
}

