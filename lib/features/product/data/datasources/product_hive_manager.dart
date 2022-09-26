import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import '../models/product_dtos.dart';

import '../../../../core/services/hive_manager.dart';

@Singleton()
class ProductHiveManager implements IHiveManager {
  static const String hiveProducts = 'products';
  late Box<ProductDTO> _productBox;

  @override
  Future<void> init() async {
    Hive.registerAdapter(ProductDTOAdapter());
    _productBox = await Hive.openBox<ProductDTO>(hiveProducts);
  }

  Box<ProductDTO>? get productBox => _productBox;

  @override
  Future<void> close() async {
    await _productBox.close();
  }

  @override
  Future<void> clear() async {
    await _productBox.clear();
  }
}
