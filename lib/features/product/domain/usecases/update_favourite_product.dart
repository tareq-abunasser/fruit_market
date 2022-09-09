import 'package:dartz/dartz.dart';
import 'package:fruit_market/core/entities/value_objects.dart';
import 'package:fruit_market/features/favourite/domain/entities/favourite_item.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/entities/failures.dart';
import '../../../favourite/domain/usecases/add_favourite_item.dart';
import '../../../favourite/domain/usecases/delete_favourite_item.dart';
import '../entities/product.dart';
import '../repositories/i_product_repository.dart';

@LazySingleton()
class UpdateFavouriteProduct {
  final AddFavouriteItem _addFavouriteItem;
  final DeleteFavouriteItem _deleteFavouriteItem;
  final IProductRepository _productRepository;

  UpdateFavouriteProduct(this._addFavouriteItem, this._deleteFavouriteItem,
      this._productRepository);

  Future<Either<Failure, Unit>> call(Product product) async {
    FavouriteItem _favouriteItem = productToFavouriteItem(product);
    Either<Failure, Unit> failureOrUnit =
        await _productRepository.updateFavoriteProduct(product);
    if (failureOrUnit.isRight()) {
      if (product.isLike) {
        failureOrUnit = await _addFavouriteItem(_favouriteItem);
      } else {
        failureOrUnit = await _deleteFavouriteItem(_favouriteItem);
      }
    }
    return failureOrUnit;
  }

  FavouriteItem productToFavouriteItem(Product product) {
    return FavouriteItem(
      id: product.id,
      name: product.name,
      imageURL: product.imageURL,
      price: product.price,
      rate: product.rate,
      discount: product.discount,
    );
  }
}
