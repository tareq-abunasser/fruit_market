import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/entities/failures.dart';
import '../../../domain/entities/product.dart';
import '../../../domain/usecases/update_favourite_product.dart';

part 'product_state.dart';

part 'product_cubit.freezed.dart';

@injectable
class ProductCubit extends Cubit<ProductState> {
  ProductCubit(this._updateFavouriteProduct)
      : super(const ProductState.initial());
  final UpdateFavouriteProduct _updateFavouriteProduct;

  void updateFavoriteProduct(Product product) {
    emit(const ProductState.actionInProgress());
    _updateFavouriteProduct(product).then((failureOrUnit) => failureOrUnit.fold(
          (f) => emit(ProductState.updateFailure(f)),
          (unit) {
            emit(const ProductState.updateSuccess());
          },
        ));
  }
}
