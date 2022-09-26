import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/entities/failures.dart';
import '../../../../core/entities/value_objects.dart';

part 'category.freezed.dart';

@freezed
abstract class Category implements _$Category {
  const Category._();

  const factory Category({
    required UniqueId id,
    required ItemName name,
  }) = _Category;

  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit.fold((f) => some(f), (_) => none());
  }
}
