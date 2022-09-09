import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import '../models/subcategory_dtos.dart';
import '../models/subcategory_dtos.dart';


@Singleton()
class SubcategoryHiveManager {
  static const String hiveSubcategories = "subcategories";

  late Box<SubcategoryDTO> _subcategoryBox;

  Future<void> init() async {
    Hive.registerAdapter(SubcategoryDTOAdapter());
    _subcategoryBox =
        await Hive.openBox<SubcategoryDTO>(hiveSubcategories);
  }

  Box<SubcategoryDTO>? get subcategoryBox => _subcategoryBox;

  Future<void> close() async {
    await _subcategoryBox.close();
  }

  Future<void> clear() async {
    await _subcategoryBox.clear();
  }
}
