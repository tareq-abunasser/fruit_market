import 'package:injectable/injectable.dart';
import '../models/favourite_item_dtos.dart';
import 'favourite_hive_manager.dart';

abstract class FavouriteLocalDataSource {
  void addFavouriteItem(FavouriteItemDTO favouriteItemDTO);

  List<FavouriteItemDTO> getFavouriteItems();

  void deleteFavoriteItem(FavouriteItemDTO favouriteItemDTO);

  void clear();

  void cacheFavouriteItems(List<FavouriteItemDTO> favouriteItems);
}

@LazySingleton(as: FavouriteLocalDataSource)
class FavouriteLocalDataSourceImpl extends FavouriteLocalDataSource {
  final FavouriteHiveManager _hiveManager;

  FavouriteLocalDataSourceImpl(this._hiveManager);

  @override
  void clear() {
    _hiveManager.favoriteItemBox!.clear();
  }

  @override
  List<FavouriteItemDTO> getFavouriteItems() {
    return _hiveManager.favoriteItemBox!.values.toList();
  }

  @override
  void addFavouriteItem(FavouriteItemDTO favouriteItemDTO) {
    _hiveManager.favoriteItemBox!.put(favouriteItemDTO.id, favouriteItemDTO);
  }

  @override
  void cacheFavouriteItems(List<FavouriteItemDTO> favouriteItems) {
    Map<dynamic, FavouriteItemDTO> favouriteItemsAsMap = {};
    favouriteItems.forEach((p) => favouriteItemsAsMap[p.id] = p);
    _hiveManager.favoriteItemBox!.putAll(favouriteItemsAsMap);
  }

  @override
  void deleteFavoriteItem(FavouriteItemDTO favouriteItemDTO) {
    _hiveManager.favoriteItemBox!.delete(favouriteItemDTO.id);
  }
}
