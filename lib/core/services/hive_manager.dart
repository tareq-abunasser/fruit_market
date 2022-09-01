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

@Singleton()
class HiveManager {
  Future<void> init() async {
    final appDocumentDirectory = await getApplicationDocumentsDirectory();
    await Hive.initFlutter((appDocumentDirectory.path));
    await getIt<AccountHiveManager>().init();
    await getIt<CartHiveManager>().init();
    await getIt<FavouriteHiveManager>().init();
    await getIt<CategoryHiveManager>().init();
    await getIt<SubcategoryHiveManager>().init();
    await getIt<ProductHiveManager>().init();
    await getIt<OrderHiveManager>().init();
  }

  Future<void> close() async {
    // await getIt<HomeHiveManager>().close();
    // await getIt<AccountHiveManager>().close();
    // await getIt<CartHiveManager>().close();

    await Hive.close();
  }

  Future<void> clear() async {
    await getIt<AccountHiveManager>().clear();
    await getIt<CartHiveManager>().clear();
    await getIt<FavouriteHiveManager>().clear();
    await getIt<CategoryHiveManager>().clear();
    await getIt<SubcategoryHiveManager>().clear();
    await getIt<ProductHiveManager>().clear();
    await getIt<OrderHiveManager>().clear();
    // await Hive.deleteFromDisk();
  }
}
