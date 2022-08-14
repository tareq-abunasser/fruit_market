import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fruit_market/features/favourite/domain/entities/favourite_item.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/entities/failures.dart';
import '../../../domain/usecases/get_favourite_items.dart';

part 'favourite_state.dart';

part 'favourite_cubit.freezed.dart';

@injectable
class FavouriteCubit extends Cubit<FavouriteState> {
  FavouriteCubit(this._favouriteItems) : super(const FavouriteState.initial());
  final GetFavouriteItems _favouriteItems;

  // List<Product> listProducts = [];

  void watchFavouriteProducts() {
    emit(const FavouriteState.favouriteItemsLoadInProgress());
    _favouriteItems().then(
        (failureOrProducts) => failureOrProducts.fold(
            (f) => emit(FavouriteState.favouriteItemsLoadFailure(f)),
            (products) {
              // listProducts.addAll(products);
              emit(FavouriteState.favouriteItemsLoadSuccess(products));
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
