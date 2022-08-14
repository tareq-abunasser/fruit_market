import 'package:flutter/material.dart';
import 'package:fruit_market/features/home/data/datasources/home_hive_manager.dart';
import 'package:fruit_market/features/home/data/models/product_dtos.dart';
import 'package:fruit_market/features/home/data/models/product_main_class_dtos.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

import '../../features/account/data/datasources/account_hive_manager.dart';
import '../../features/cart/data/datasources/cart_hive_manager.dart';
import '../../features/home/data/datasources/home_local_data_source.dart';
import '../../features/home/data/models/product_subclass_dtos.dart';
import '../../injection.dart';

@Singleton()
class HiveManager {
  Future<void> init() async {
    final appDocumentDirectory = await getApplicationDocumentsDirectory();
    await Hive.initFlutter((appDocumentDirectory.path));
    await getIt<HomeHiveManager>().init();
    await getIt<AccountHiveManager>().init();
    await getIt<CartHiveManager>().init();

  }

  Future<void> close() async {
    // await getIt<HomeHiveManager>().close();
    // await getIt<AccountHiveManager>().close();
    // await getIt<CartHiveManager>().close();

    await Hive.close();
  }
  Future<void> clear() async {
    await getIt<HomeHiveManager>().clear();
    await getIt<AccountHiveManager>().clear();
    await getIt<CartHiveManager>().clear();
    // await Hive.deleteFromDisk();
  }
}
