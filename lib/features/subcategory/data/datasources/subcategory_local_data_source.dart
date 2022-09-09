import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/entities/exceptions.dart';
import '../models/subcategory_dtos.dart';
import 'subcategory_hive_manager.dart';

abstract class SubcategoryLocalDataSource {
  List<SubcategoryDTO> getSubcategories({String parentId, int limit});

  void cacheSubcategories(List<SubcategoryDTO> subcategory);

  void clear();
}

@LazySingleton(as: SubcategoryLocalDataSource)
class SubcategoryLocalDataSourceImpl extends SubcategoryLocalDataSource {
  final SubcategoryHiveManager _hiveManager;

  SubcategoryLocalDataSourceImpl(this._hiveManager);

  @override
  Future<void> cacheSubcategories(List<SubcategoryDTO> subcategory) async {
    Get.printInfo(info:'function : cacheSubcategories');
    Map<dynamic, SubcategoryDTO> subcategoriesAsMap = {};
    for (var p in subcategory) {
      subcategoriesAsMap[p.id] = p;
    }
    _hiveManager.subcategoryBox!.putAll(subcategoriesAsMap);
  }

  @override
  List<SubcategoryDTO> getSubcategories({String? parentId, int? limit}) {
    Get.printInfo(info:'function : getSubcategories');
    try {
      return _hiveManager.subcategoryBox!.values.toList();
    } catch (_) {
      throw CacheException();
    }
  }

  @override
  void clear() {
    Get.printInfo(info:'function : clear');
    try {
      _hiveManager.subcategoryBox!.clear();
    } catch (_) {
      throw CacheException();
    }
  }
}
