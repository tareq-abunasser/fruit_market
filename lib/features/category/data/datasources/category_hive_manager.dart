import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

import '../models/category_dtos.dart';
import '../../../../core/services/hive_manager.dart';

@Singleton()
class CategoryHiveManager implements IHiveManager {
  static const String hiveCategory = 'category';

  late Box<CategoryDTO> _categoryBox;

  @override
  Future<void> init() async {
    Hive.registerAdapter(CategoryDTOAdapter());
    _categoryBox = await Hive.openBox<CategoryDTO>(hiveCategory);
  }

  Box<CategoryDTO>? get categoryBox => _categoryBox;

  @override
  Future<void> close() async {
    await _categoryBox.close();
  }

  @override
  Future<void> clear() async {
    await _categoryBox.clear();
  }
}
