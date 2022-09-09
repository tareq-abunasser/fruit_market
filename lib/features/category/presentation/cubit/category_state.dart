part of 'category_cubit.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState.initial() = Initial;

  const factory CategoryState.loadInProgress() = _LoadInProgress;

  const factory CategoryState.loadSuccess(List<Category> categories) =
      _LoadSuccess;

  const factory CategoryState.loadFailure(Failure failure) = _LoadFailure;
}
