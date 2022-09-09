import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/entities/value_objects.dart';

part 'subcategory.freezed.dart';

@freezed
abstract class Subcategory implements _$Subcategory {
  const Subcategory._();

  const factory Subcategory({
    required UniqueId id,
    required UniqueId parentId,
    required ItemName name,
    required Description desc,
    required Discount discount,
  }) = _Subcategory;

}
