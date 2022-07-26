import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fruit_market/features/home/domain/entities/product.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/faliures/home_failure.dart';
import '../../../domain/repositories/i_home_repository.dart';

part 'product_state.dart';

part 'product_cubit.freezed.dart';

@injectable
class ProductCubit extends Cubit<ProductState> {
  ProductCubit(this._iHomeRepository) : super(const ProductState.initial());
  final IHomeRepository _iHomeRepository;

  void updateFavoriteProduct(Product product) {
    emit(const ProductState.updateFavoriteProductLoadInProgress());
    _iHomeRepository
        .updateFavoriteProduct(product)
        .then((failureOrUnit) => failureOrUnit.fold(
              (f) => emit(ProductState.updateFavoriteProductLoadInFailure(f)),
              (unit) {
                emit(const ProductState.updateFavoriteProductLoadInSuccess());
              },
            ));
  }
}
