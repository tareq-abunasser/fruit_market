part of 'subcategory_cubit.dart';

@freezed
class SubcategoryState with _$SubcategoryState {
  const factory SubcategoryState.initial() = Initial;

  const factory SubcategoryState.loadInProgress() = _LoadInProgress;

  const factory SubcategoryState.loadSuccess(List<Subcategory> categories) =
      _LoadSuccess;

  const factory SubcategoryState.loadFailure(Failure failure) = _LoadFailure;
}
