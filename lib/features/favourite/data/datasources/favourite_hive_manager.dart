import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import '../models/favourite_item_dtos.dart';

import '../../../../core/services/hive_manager.dart';

@Singleton()
class FavouriteHiveManager implements IHiveManager {
  late Box<FavouriteItemDTO> _favoriteItemBox;
  static const String hiveFavoriteItems = 'favorite_items';

  @override
  Future<void> init() async {
    Hive.registerAdapter(FavouriteItemDTOAdapter());
    _favoriteItemBox = await Hive.openBox<FavouriteItemDTO>(hiveFavoriteItems);
  }

  Box<FavouriteItemDTO>? get favoriteItemBox => _favoriteItemBox;

  @override
  Future<void> close() async {
    await _favoriteItemBox.close();
  }

  @override
  Future<void> clear() async {
    await _favoriteItemBox.clear();
  }
}
