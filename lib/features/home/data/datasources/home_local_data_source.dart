import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:fruit_market/core/utils/hive_manager.dart';
import 'package:fruit_market/features/home/data/datasources/home_hive_manager.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

import '../../../../core/entities/exceptions.dart';
import '../../../../core/utils/preferences_manager.dart';
import '../../domain/entities/product_main_class.dart';
import '../../domain/faliures/home_failure.dart';
import '../models/product_dtos.dart';
import '../models/product_main_class_dtos.dart';
import '../models/product_subclass_dtos.dart';

abstract class HomeLocalDataSource {
  List<ProductMainClassDTO> getProductMainClasses();

  List<ProductSubclassDTO> getProductSubclasses({String parentId, int limit});

  List<ProductDTO> getProducts({String? parentId, int? limit});

  void cacheProducts(List<ProductDTO> products);

  void cacheProductMainClasses(List<ProductMainClassDTO> productMainClasses);

  void cacheProductSubclasses(List<ProductSubclassDTO> productSubclass);

  void clear();

  void updateFavoriteProduct(ProductDTO product);

  List<ProductDTO> getFavoriteProducts();

  void cacheFavoriteProducts(List<ProductDTO> products);
  void cacheCart(List<ProductDTO> products);
  List<ProductDTO> getCart();
}

@LazySingleton(as: HomeLocalDataSource)
class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  final HomeHiveManager _hiveManager;
  HomeLocalDataSourceImpl(this._hiveManager);

  @override
  void cacheProducts(List<ProductDTO> products) {
    Map<dynamic, ProductDTO> productsAsMap = {};
    products.forEach((p) => productsAsMap[p.id] = p);
    _hiveManager.productBox!.putAll(productsAsMap);
  }

  @override
  void cacheProductMainClasses(List<ProductMainClassDTO> productMainClasses) {
    Map<dynamic, ProductMainClassDTO> productMainClassesAsMap = {};
    productMainClasses.forEach((p) => productMainClassesAsMap[p.id] = p);

    _hiveManager.productMainClassBox!.putAll(productMainClassesAsMap);
  }

  @override
  Future<void> cacheProductSubclasses(
      List<ProductSubclassDTO> productSubclass) async {
    Map<dynamic, ProductSubclassDTO> productSubclassesAsMap = {};
    productSubclass.forEach((p) => productSubclassesAsMap[p.id] = p);
    _hiveManager.productSubclassBox!.putAll(productSubclassesAsMap);
  }

  @override
  List<ProductDTO> getProducts({String? parentId, int? limit}) {
    try {
      return _hiveManager.productBox!.values.toList();
    } catch (_) {
      throw CacheException();
    }
  }

  @override
  List<ProductMainClassDTO> getProductMainClasses() {
    try {
      return _hiveManager.productMainClassBox!.values.toList();
    } catch (_) {
      throw CacheException();
    }
  }

  @override
  List<ProductSubclassDTO> getProductSubclasses(
      {String? parentId, int? limit}) {
    try {
      return _hiveManager.productSubclassBox!.values.toList();
    } catch (_) {
      throw CacheException();
    }
  }

  @override
  void clear() {
    try {
      _hiveManager.productMainClassBox!.clear();
      _hiveManager.productSubclassBox!.clear();
      _hiveManager.productBox!.clear();
    } catch (_) {
      throw CacheException();
    }
  }

  @override
  void updateFavoriteProduct(ProductDTO product) {
    _hiveManager.productBox!.put(product.id, product);
  }

  @override
  List<ProductDTO> getFavoriteProducts() {
    try {
      return _hiveManager.favoriteProductBox!.values.toList();
    } catch (_) {
      throw CacheException();
    }
  }

  @override
  void cacheFavoriteProducts(List<ProductDTO> products) {
    Map<dynamic, ProductDTO> productsAsMap = {};
    products.forEach((p) => productsAsMap[p.id] = p);
    _hiveManager.favoriteProductBox!.putAll(productsAsMap);
  }
  @override
  void cacheCart(List<ProductDTO> products) {
    Map<dynamic, ProductDTO> productsAsMap = {};
    products.forEach((p) => productsAsMap[p.id] = p);
    _hiveManager.shoppingCartBox!.putAll(productsAsMap);
  }
  @override
  List<ProductDTO> getCart() {
    try {
      return _hiveManager.shoppingCartBox!.values.toList();
    } catch (_) {
      throw CacheException();
    }
  }

}
