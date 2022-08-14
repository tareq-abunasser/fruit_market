import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/entities/failures.dart';
import '../../../../core/entities/value_objects.dart';
import '../../../cart/domain/entities/cart_item.dart';
import '../../../cart/domain/entities/value_objects.dart';

part 'order_item.freezed.dart';

@freezed
abstract class OrderItem implements _$OrderItem{
  const OrderItem._();

  const factory OrderItem({
    required UniqueId id,
    required ItemName name,
    required ImageURL imageURL,
    required double rate,
    required DateTime deliveredOn,
  }) = _Product;

  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit
        .andThen(imageURL.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }


}
