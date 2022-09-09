import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/entities/exceptions.dart';
import '../models/favourite_item_dtos.dart';
import 'favourite_hive_manager.dart';

abstract class FavouriteLocalDataSource {
  void addFavouriteItem(FavouriteItemDTO favouriteItemDTO);

  List<FavouriteItemDTO> getFavouriteItems();

  void deleteFavoriteItem(FavouriteItemDTO favouriteItemDTO);

  void clearFavourites();

  void cacheFavouriteItems(List<FavouriteItemDTO> favouriteItems);
}

@LazySingleton(as: FavouriteLocalDataSource)
class FavouriteLocalDataSourceImpl extends FavouriteLocalDataSource {
  final FavouriteHiveManager _hiveManager;

  FavouriteLocalDataSourceImpl(this._hiveManager);

  @override
  void clearFavourites() {
    printInfo(info: "function : clear");
    _hiveManager.favoriteItemBox!.clear();
  }

  @override
  List<FavouriteItemDTO> getFavouriteItems() {
    printInfo(info: "function : getFavouriteItems");
    try {
      return _hiveManager.favoriteItemBox!.values.toList();
    } catch (e) {
      printError(info: e.toString());
      throw CacheException();
    }
  }

  @override
  void addFavouriteItem(FavouriteItemDTO favouriteItemDTO) {
    printInfo(info: "function : addFavouriteItem");
    try {
      _hiveManager.favoriteItemBox!.put(favouriteItemDTO.id, favouriteItemDTO);
    } catch (e) {
      printError(info: e.toString());
      throw CacheException();
    }
  }

  @override
  void cacheFavouriteItems(List<FavouriteItemDTO> favouriteItems) {
    printInfo(info: "function : cacheFavouriteItems");
    Map<dynamic, FavouriteItemDTO> favouriteItemsAsMap = {};
    for (var p in favouriteItems) {
      favouriteItemsAsMap[p.id] = p;
    }
    try {
      _hiveManager.favoriteItemBox!.putAll(favouriteItemsAsMap);
    } catch (e) {
      printError(info: e.toString());
      throw CacheException();
    }
  }

  @override
  void deleteFavoriteItem(FavouriteItemDTO favouriteItemDTO) {
    printInfo(info: "function : deleteFavoriteItem");
    try {
      _hiveManager.favoriteItemBox!.delete(favouriteItemDTO.id);
    } catch (e) {
      printError(info: e.toString());
      throw CacheException();
    }
  }
}
