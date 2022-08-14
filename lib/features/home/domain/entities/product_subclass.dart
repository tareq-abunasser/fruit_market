import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fruit_market/features/home/domain/entities/product.dart';

import '../../../../core/entities/value_objects.dart';
import 'value_objects.dart';

part 'product_subclass.freezed.dart';

@freezed
abstract class ProductSubclass implements _$ProductSubclass {
  const ProductSubclass._();

  const factory ProductSubclass({
    required UniqueId id,
    required UniqueId parentId,
    required ItemName name,
    required Description desc,
    required Discount discount,
  }) = _ProductSubclass;

}
