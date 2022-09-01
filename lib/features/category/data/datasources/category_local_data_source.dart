import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:fruit_market/core/utils/hive_manager.dart';
import 'package:fruit_market/features/home/data/datasources/home_hive_manager.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

import '../../../../core/entities/exceptions.dart';
import '../../../../core/utils/preferences_manager.dart';
import '../models/category_dtos.dart';
import 'home_hive_manager.dart';

abstract class HomeLocalDataSource {
  List<CategoryDTO> getCategory();

  void cacheCategory(List<CategoryDTO> category);

  void clear();
}

@LazySingleton(as: HomeLocalDataSource)
class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  final CategoryHiveManager _hiveManager;

  HomeLocalDataSourceImpl(this._hiveManager);

  @override
  void cacheCategory(List<CategoryDTO> category) {
    Map<dynamic, CategoryDTO> categoryAsMap = {};
    category.forEach((p) => categoryAsMap[p.id] = p);

    _hiveManager.categoryBox!.putAll(categoryAsMap);
  }

  @override
  List<CategoryDTO> getCategory() {
    try {
      return _hiveManager.categoryBox!.values.toList();
    } catch (_) {
      throw CacheException();
    }
  }

  @override
  void clear() {
    try {
      _hiveManager.categoryBox!.clear();
    } catch (_) {
      throw CacheException();
    }
  }
}
