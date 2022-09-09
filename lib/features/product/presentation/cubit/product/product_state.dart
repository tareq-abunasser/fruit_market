part of 'product_cubit.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState.initial() = _Initial;

  const factory ProductState.actionInProgress() = _ActionInProgress;

  const factory ProductState.updateSuccess() = _UpdateSuccess;

  const factory ProductState.updateFailure(Failure failure) = _UpdateFailure;
}
