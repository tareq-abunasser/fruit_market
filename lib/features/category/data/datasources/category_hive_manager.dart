import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

import '../models/category_dtos.dart';

@Singleton()
class CategoryHiveManager {
  static const String hiveCategory = 'category';

  late Box<CategoryDTO> _categoryBox;

  Future<void> init() async {
    Hive.registerAdapter(CategoryDTOAdapter());
    _categoryBox = await Hive.openBox<CategoryDTO>(hiveCategory);
  }

  Box<CategoryDTO>? get categoryBox => _categoryBox;

  Future<void> close() async {
    await _categoryBox.close();
  }

  Future<void> clear() async {
    await _categoryBox.clear();
  }
}
