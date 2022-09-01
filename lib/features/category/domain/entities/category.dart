import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fruit_market/features/home/domain/entities/value_objects.dart';

import '../../../../core/entities/value_objects.dart';
import 'product_subclass.dart';

part 'product_main_class.freezed.dart';

@freezed
abstract class ProductMainClass implements _$ProductMainClass {
  const ProductMainClass._();

  const factory ProductMainClass({
    required UniqueId id,
    required ItemName name,
  }) = _ProductMainClass;

}
