import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/entities/exceptions.dart';
import '../../../../core/entities/failures.dart';
import '../../../../core/utils/network_info.dart';
import '../../domain/repositories/i_favourite_repository.dart';
import '../datasources/favourite_local_data_source.dart';
import '../datasources/favourite_remote_data_source.dart';
import '../models/favourite_item_dtos.dart';
import '../../domain/entities/favourite_item.dart';

@LazySingleton(as: IFavouriteRepository)
class FavouriteRepository implements IFavouriteRepository {
  final FavouriteLocalDataSource _favouriteLocalDataSourceImpl;
  final FavouriteRemoteDataSource _favouriteRemoteDataSourceImpl;
  final NetworkInfo _networkInfo;

  FavouriteRepository(
    this._favouriteRemoteDataSourceImpl,
    this._favouriteLocalDataSourceImpl,
    this._networkInfo,
  );

  @override
  Future<Either<Failure, Unit>> addFavouriteItem(FavouriteItem favouriteItem) async {
    // try {
    //   if (await _networkInfo.isConnected) {
    //     _favouriteRemoteDataSourceImpl
    //         .updateFavoriteProduct(FavouriteItemDTO.fromDomain(favouriteItem));
    //     _favouriteLocalDataSourceImpl
    //         .updateFavoriteProduct(FavouriteItemDTO.fromDomain(favouriteItem));
    //     return right(unit);
    //   } else {
    //     return left(const Failure.internet());
    //   }
    // } on ServerException {
    //   return left(const Failure.serverError());
    // }
    throw UnimplementedError();

  }

  @override
  Future<Either<Failure, List<FavouriteItem>>> getFavouriteItems() async {
    // List<FavouriteItem> listProduct = [];
    // try {
    //   if (await _networkInfo.isConnected) {
    //     final listProductDTO =
    //         await _favouriteRemoteDataSourceImpl.getFavoriteProducts();
    //
    //     for (var product in listProductDTO) {
    //       listProduct.add(product.toDomain());
    //     }
    //     _favouriteLocalDataSourceImpl.cacheFavoriteProducts(listProductDTO);
    //     return right(listProduct);
    //   } else {
    //     final listProductDTO =
    //     _favouriteLocalDataSourceImpl.getFavoriteProducts();
    //     for (var product in listProductDTO) {
    //       listProduct.add(product.toDomain());
    //     }
    //     return right(listProduct);
    //     // return left(const HomeFailure.internet());
    //   }
    // } on ServerException {
    //   return left(const Failure.serverError());
    // }
    throw UnimplementedError();

  }

  @override
  Future<Either<Failure, Unit>> deleteAllFavoriteItem() {
    // TODO: implement deleteAllFavoriteItem
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> deleteFavoriteItem(FavouriteItem favouriteItem) {
    // TODO: implement deleteFavoriteItem
    throw UnimplementedError();
  }


}
