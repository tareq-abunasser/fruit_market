import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import '../models/favourite_item_dtos.dart';

@Singleton()
class FavouriteHiveManager {
  late Box<FavouriteItemDTO> _favoriteItemBox;
  static const String hiveFavoriteItems = 'favorite_items';

  Future<void> init() async {
    Hive.registerAdapter(FavouriteItemDTOAdapter());
    _favoriteItemBox = await Hive.openBox<FavouriteItemDTO>(hiveFavoriteItems);
  }

  Box<FavouriteItemDTO>? get favoriteItemBox => _favoriteItemBox;
}
