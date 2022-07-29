import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

import '../models/product_dtos.dart';
import '../models/product_main_class_dtos.dart';
import '../models/product_subclass_dtos.dart';
import 'home_local_data_source.dart';

@Singleton()
class HomeHiveManager {
  late Box<ProductDTO> _productBox;
  late Box<ProductMainClassDTO> _productMainClassBox;
  late Box<ProductSubclassDTO> _productSubclassBox;
  late Box<ProductDTO> _favoriteProductBox;
  late Box<ProductDTO> _shoppingCartBox;

  // var adapters = <TypeAdapter<dynamic>>[
  //   ProductDTOAdapter(),
  //   ProductMainClassDTOAdapter(),
  //   ProductSubclassDTOAdapter()
  // ];
  Future<void> init() async {
    // for (var adapter in adapters){
    //   Hive.registerAdapter(adapter);
    // }

    Hive.registerAdapter(ProductMainClassDTOAdapter());
    _productMainClassBox = await Hive.openBox<ProductMainClassDTO>(
        HomeLocalDataSourceImpl.hiveProductMainClasses);
    Hive.registerAdapter(ProductSubclassDTOAdapter());
    _productSubclassBox = await Hive.openBox<ProductSubclassDTO>(
        HomeLocalDataSourceImpl.hiveProductSubclasses);
    Hive.registerAdapter(ProductDTOAdapter());
    _productBox =
        await Hive.openBox<ProductDTO>(HomeLocalDataSourceImpl.hiveProducts);
    _favoriteProductBox = await Hive.openBox<ProductDTO>(
        HomeLocalDataSourceImpl.hiveFavoriteProducts);
    _shoppingCartBox = await Hive.openBox<ProductDTO>(
        HomeLocalDataSourceImpl.hiveFavoriteProducts);
  }

  Box<ProductDTO>? get productBox => _productBox;

  Box<ProductMainClassDTO>? get productMainClassBox => _productMainClassBox;

  Box<ProductSubclassDTO>? get productSubclassBox => _productSubclassBox;

  Box<ProductDTO>? get favoriteProductBox => _favoriteProductBox;

  Box<ProductDTO>? get shoppingCartBox => _shoppingCartBox;
}
