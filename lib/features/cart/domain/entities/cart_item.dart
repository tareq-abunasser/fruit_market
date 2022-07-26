import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/entities/failures.dart';
import '../../../../core/entities/value_objects.dart';
import '../../../auth/domain/entities/value_objects.dart';
import '../../../home/domain/entities/value_objects.dart';
import 'value_objects.dart';
// import 'value_objects.dart';

part 'cart_item.freezed.dart';

@freezed
abstract class CartItem implements _$CartItem {
  const CartItem._();

  const factory CartItem({
    required UniqueId id,
    required ItemName name,
    required ImageURL imageURL,
    required Price currentPrice,
    required Price oldPrice,
    required Price saved,
    required Quantity quantity,
  }) = _CartItem;

  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit
        .andThen(imageURL.failureOrUnit)
        .andThen(currentPrice.failureOrUnit)
        .andThen(oldPrice.failureOrUnit)
        .andThen(saved.failureOrUnit)
        .andThen(quantity.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }


}
