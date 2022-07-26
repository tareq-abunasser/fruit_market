import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/product.dart';
import '../../../domain/faliures/home_failure.dart';
import '../../../domain/repositories/i_home_repository.dart';
import '../../../domain/usecases/add_cart_item.dart';

part 'favourite_state.dart';

part 'favourite_cubit.freezed.dart';

@injectable
class FavouriteCubit extends Cubit<FavouriteState> {
  FavouriteCubit(this._iHomeRepository) : super(const FavouriteState.initial());
  final IHomeRepository _iHomeRepository;

  // List<Product> listProducts = [];

  void watchFavouriteProducts() {
    emit(const FavouriteState.productsLoadInProgress());
    _iHomeRepository.getFavouriteProducts().then(
        (failureOrProducts) => failureOrProducts.fold(
            (f) => emit(FavouriteState.productsLoadFailure(f)),
            (products) {
              // listProducts.addAll(products);
              emit(FavouriteState.productsLoadSuccess(products));
            }));
  }
  // List<Product> get products {
  //   return listProducts;
  // }
  //
  // set products(List<Product> value) {
  //   listProducts = value;
  // }
}
