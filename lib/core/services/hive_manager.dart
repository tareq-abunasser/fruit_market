import 'package:fruit_market/features/category/data/datasources/category_hive_manager.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import '../../features/account/data/datasources/account_hive_manager.dart';
import '../../features/cart/data/datasources/cart_hive_manager.dart';
import '../../features/favourite/data/datasources/favourite_hive_manager.dart';
import '../../features/orders/data/datasources/order_hive_manager.dart';
import '../../features/product/data/datasources/product_hive_manager.dart';
import '../../features/subcategory/data/datasources/subcategory_hive_manager.dart';
import '../../injection.dart';

abstract class IHiveManager {
  Future<void> init();

  Future<void> close();

  Future<void> clear();
}

@Singleton()
class HiveManager{
  static final List<IHiveManager> _hiveManagers = [
    getIt<AccountHiveManager>(),
    getIt<ProductHiveManager>(),
    getIt<FavouriteHiveManager>(),
    getIt<CartHiveManager>(),
    getIt<OrderHiveManager>(),
    getIt<CategoryHiveManager>(),
    getIt<SubcategoryHiveManager>(),
  ];

  Future<void> init() async {
    final appDocumentDirectory = await getApplicationDocumentsDirectory();
    await Hive.initFlutter((appDocumentDirectory.path));
    for (final hiveManager in _hiveManagers) {
      await hiveManager.init();
    }
  }

  Future<void> close() async {
    for (final hiveManager in _hiveManagers) {
      await hiveManager.close();
    }
    await Hive.close();
  }

  Future<void> clear() async {
    for (final hiveManager in _hiveManagers) {
      await hiveManager.clear();
    }
    // await Hive.deleteFromDisk();
  }
}
