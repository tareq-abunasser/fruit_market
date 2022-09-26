import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/entities/failures.dart';
import '../../domain/entities/category.dart';
import '../../domain/usecases/get_categories.dart';

part 'category_state.dart';

part 'category_cubit.freezed.dart';

@injectable
class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit(this._getCategories) : super(const CategoryState.initial());
  final GetCategories _getCategories;

  void watchCategories() {
    emit(const CategoryState.loadInProgress());
    _getCategories().then(
      (failureOrCategories) => failureOrCategories.fold(
        (failure) => emit(CategoryState.loadFailure(failure)),
        (categories) {
          emit(CategoryState.loadSuccess(categories));
          categories.forEach((p) {
            // add(CategoryState.watchCategories(
            //     parentId: p.id.getOrCrash(), limit: 2));
          });
        },
      ),
    );
  }
}
