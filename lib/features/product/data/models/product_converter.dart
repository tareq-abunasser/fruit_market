import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fruit_market/features/product/data/models/product_dtos.dart';

class ProductConverter
    implements JsonConverter<ProductDTO, Map<String, dynamic>> {
  const ProductConverter();

  @override
  ProductDTO fromJson(Map<String, dynamic> map) =>
      ProductDTO.fromJson(map).copyWith(id: map['id']);

  @override
  Map<String, dynamic> toJson(ProductDTO product) {
    Map<String, dynamic> productAsJson = product.toJson();
    productAsJson['id'] = product.id;
    return productAsJson;
  }
}