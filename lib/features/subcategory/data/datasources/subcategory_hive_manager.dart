import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import '../models/subcategory_dtos.dart';
import '../models/subcategory_dtos.dart';

import '../../../../core/services/hive_manager.dart';

@Singleton()
class SubcategoryHiveManager implements IHiveManager {
  static const String hiveSubcategories = "subcategories";

  late Box<SubcategoryDTO> _subcategoryBox;

  @override
  Future<void> init() async {
    Hive.registerAdapter(SubcategoryDTOAdapter());
    _subcategoryBox = await Hive.openBox<SubcategoryDTO>(hiveSubcategories);
  }

  Box<SubcategoryDTO>? get subcategoryBox => _subcategoryBox;

  @override
  Future<void> close() async {
    await _subcategoryBox.close();
  }

  @override
  Future<void> clear() async {
    await _subcategoryBox.clear();
  }
}
