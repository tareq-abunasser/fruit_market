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
  static const String hiveFavoriteProducts = 'favorite_products';
  static const String hiveProducts = 'products';
  static const String hiveProductMainClasses = 'product_main_classes';
  static const String hiveProductSubclasses = "product_subclasses";

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
    _productMainClassBox =
        await Hive.openBox<ProductMainClassDTO>(hiveProductMainClasses);
    Hive.registerAdapter(ProductSubclassDTOAdapter());
    _productSubclassBox =
        await Hive.openBox<ProductSubclassDTO>(hiveProductSubclasses);
    Hive.registerAdapter(ProductDTOAdapter());
    _productBox = await Hive.openBox<ProductDTO>(hiveProducts);
    _favoriteProductBox = await Hive.openBox<ProductDTO>(hiveFavoriteProducts);
    _shoppingCartBox = await Hive.openBox<ProductDTO>(hiveFavoriteProducts);
  }

  Box<ProductDTO>? get productBox => _productBox;

  Box<ProductMainClassDTO>? get productMainClassBox => _productMainClassBox;

  Box<ProductSubclassDTO>? get productSubclassBox => _productSubclassBox;

  Box<ProductDTO>? get favoriteProductBox => _favoriteProductBox;

  Box<ProductDTO>? get shoppingCartBox => _shoppingCartBox;

  Future<void> close() async {
    await _productBox.close();
    await _productMainClassBox.close();
    await _productSubclassBox.close();
    await _favoriteProductBox.close();
    await _shoppingCartBox.close();
  }

  Future<void> clear() async {
    await _productBox.clear();
    await _productMainClassBox.clear();
    await _productSubclassBox.clear();
    await _favoriteProductBox.clear();
    await _shoppingCartBox.clear();
  }
}
