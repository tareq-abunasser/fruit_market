import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/entities/exceptions.dart';
import '../models/category_dtos.dart';
import 'category_hive_manager.dart';

abstract class CategoryLocalDataSource {
  List<CategoryDTO> getCategories();

  void cacheCategories(List<CategoryDTO> category);

  void clear();
}

@LazySingleton(as: CategoryLocalDataSource)
class CategoryLocalDataSourceImpl extends CategoryLocalDataSource {
  final CategoryHiveManager _hiveManager;

  CategoryLocalDataSourceImpl(this._hiveManager);

  @override
  void cacheCategories(List<CategoryDTO> category) {
    Get.printInfo(info:'function : cacheCategories');
    Map<dynamic, CategoryDTO> categoryAsMap = {};
    for (var p in category) {
      categoryAsMap[p.id] = p;
    }

    _hiveManager.categoryBox!.putAll(categoryAsMap);
  }

  @override
  List<CategoryDTO> getCategories() {
    Get.printInfo(info:'function : getCategories');
    try {
      return _hiveManager.categoryBox!.values.toList();
    } catch (_) {
      throw CacheException();
    }
  }

  @override
  void clear() {
    Get.printInfo(info:'function : clear');
    try {
      _hiveManager.categoryBox!.clear();
    } catch (_) {
      throw CacheException();
    }
  }
}
