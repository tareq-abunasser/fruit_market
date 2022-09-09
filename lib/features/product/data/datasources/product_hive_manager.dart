import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import '../models/product_dtos.dart';

@Singleton()
class ProductHiveManager {
  static const String hiveProducts = 'products';
  late Box<ProductDTO> _productBox;

  Future<void> init() async {
    Hive.registerAdapter(ProductDTOAdapter());
    _productBox = await Hive.openBox<ProductDTO>(hiveProducts);
  }

  Box<ProductDTO>? get productBox => _productBox;

  Future<void> close() async {
    await _productBox.close();
  }

  Future<void> clear() async {
    await _productBox.clear();
  }
}
