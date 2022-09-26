import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/entities/failures.dart';
import '../../domain/entities/subcategory.dart';
import '../../domain/usecases/get_subcategories.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'subcategory_state.dart';

part 'subcategory_cubit.freezed.dart';

@injectable
class SubcategoryCubit extends Cubit<SubcategoryState> {
  SubcategoryCubit(this._getSubcategories)
      : super(const SubcategoryState.initial());
  final GetSubcategories _getSubcategories;

  void watchCategories() {
    emit(const SubcategoryState.loadInProgress());
    _getSubcategories().then(
      (failureOrSubcategories) => failureOrSubcategories.fold(
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
