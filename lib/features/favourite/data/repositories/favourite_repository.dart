import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/entities/exceptions.dart';
import '../../../../core/entities/failures.dart';
import '../../../../core/services/network_info.dart';
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
  Future<Either<Failure, Unit>> addFavouriteItem(
      FavouriteItem favouriteItem) async {
    printInfo(info: 'function : addFavouriteItem');
    try {
      if (await _networkInfo.isConnected) {
        _favouriteRemoteDataSourceImpl
            .addFavouriteItem(FavouriteItemDTO.fromDomain(favouriteItem));
        return right(unit);
      } else {
        return left(const Failure.internet());
      }
    } on ServerException {
      return left(const Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, List<FavouriteItem>>> getFavouriteItems() async {
    printInfo(info: 'function : getFavouriteItems');
    List<FavouriteItem> listFavouriteItem = [];
    List<FavouriteItemDTO> listFavouriteItemDTO = [];
    try {
      if (await _networkInfo.isConnected) {
        listFavouriteItemDTO =
            await _favouriteRemoteDataSourceImpl.getFavouriteItems();
        _favouriteLocalDataSourceImpl.cacheFavouriteItems(listFavouriteItemDTO);
      } else {
        listFavouriteItemDTO =
            _favouriteLocalDataSourceImpl.getFavouriteItems();
      }
      listFavouriteItem =
          listFavouriteItemDTO.map((e) => e.toDomain()).toList();
      return right(listFavouriteItem);
    } on ServerException {
      return left(const Failure.serverError());
    } on CacheException {
      return left(const Failure.cacheError());
    }
  }

  @override
  Future<Either<Failure, Unit>> clearFavourites() async {
    printInfo(info: 'function : deleteAllFavoriteItem');
    try {
      if (await _networkInfo.isConnected) {
        _favouriteRemoteDataSourceImpl.clearFavourites();
        _favouriteLocalDataSourceImpl.clearFavourites();
        return right(unit);
      } else {
        return left(const Failure.internet());
      }
    } on ServerException {
      return left(const Failure.serverError());
    } on CacheException {
      return left(const Failure.cacheError());
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteFavoriteItem(
      FavouriteItem favouriteItem) async {
    printInfo(info: 'function : deleteFavoriteItem');
    try {
      if (await _networkInfo.isConnected) {
        _favouriteRemoteDataSourceImpl
            .deleteFavoriteItem(FavouriteItemDTO.fromDomain(favouriteItem));
        _favouriteLocalDataSourceImpl
            .deleteFavoriteItem(FavouriteItemDTO.fromDomain(favouriteItem));
        return right(unit);
      } else {
        return left(const Failure.internet());
      }
    } on ServerException {
      return left(const Failure.serverError());
    } on CacheException {
      return left(const Failure.cacheError());
    }
  }
}
