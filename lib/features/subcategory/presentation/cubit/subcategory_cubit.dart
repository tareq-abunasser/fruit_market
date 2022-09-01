import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/entities/failures.dart';
import '../../domain/entities/category.dart';
import '../../domain/usecases/get_categories.dart';
import '../../domain/usecases/get_subcategories.dart';

part 'category_state.dart';

part 'category_cubit.freezed.dart';

@injectable
class SubcategoryCubit extends Cubit<SubcategoryState> {
  SubcategoryCubit(this._getSubcategories)
      : super(const SubcategoryState.initial());
  final GetSubcategories _getSubcategories;

  void watchCategories() {
    emit(const SubcategoryState.loadInProgress());
    _getSubcategories().then(
      (failureOrCategories) => failureOrCategories.fold(
        (failure) => emit(SubcategoryState.loadFailure(failure)),
        (categories) {
          emit(SubcategoryState.loadSuccess(categories));
          categories.forEach((p) {
            // add(CategoryState.watchCategories(
            //     parentId: p.id.getOrCrash(), limit: 2));
          });
        },
      ),
    );
  }
}
