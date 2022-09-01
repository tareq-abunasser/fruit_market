import 'package:dartz/dartz.dart';
import 'package:fruit_market/core/entities/value_objects.dart';
import 'package:fruit_market/features/favourite/domain/entities/favourite_item.dart';
import 'package:fruit_market/features/home/domain/entities/product.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/entities/failures.dart';
import '../../../favourite/domain/usecases/add_favourite_item.dart';
import '../../../favourite/domain/usecases/delete_favourite_item.dart';

@LazySingleton()
class UpdateFavouriteItem {
  final AddFavouriteItem _addFavouriteItem;
  final DeleteFavouriteItem _deleteFavouriteItem;

  UpdateFavouriteItem(this._addFavouriteItem, this._deleteFavouriteItem);

  Future<Either<Failure, Unit>> call(Product product) async {
    FavouriteItem _favouriteItem = productToFavouriteItem(product);
    if (product.isLike) {
      return await _addFavouriteItem.call(_favouriteItem);
    } else {
      return await _deleteFavouriteItem.call(_favouriteItem);
    }
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
