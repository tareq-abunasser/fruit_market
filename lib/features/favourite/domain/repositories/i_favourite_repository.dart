import 'package:dartz/dartz.dart';
import '../../../../core/entities/failures.dart';
import '../entities/favourite_item.dart';

abstract class IFavouriteRepository {

  Future<Either<Failure, Unit>> addFavouriteItem(FavouriteItem favouriteItem);
  Future<Either<Failure, List<FavouriteItem>>> getFavouriteItems();
  Future<Either<Failure, Unit>> deleteFavoriteItem(FavouriteItem favouriteItem);
  Future<Either<Failure, Unit>> clearFavourites();

}
