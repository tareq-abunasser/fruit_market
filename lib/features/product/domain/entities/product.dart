import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/entities/failures.dart';
import '../../../../core/entities/value_objects.dart';
import '../../../cart/domain/entities/cart_item.dart';
import '../../../cart/domain/entities/value_objects.dart';

part 'product.freezed.dart';

@freezed
abstract class Product implements _$Product {
  const Product._();

  const factory Product({
    required UniqueId id,
    required UniqueId parentId,
    required ItemName name,
    required Price price,
    required ImageURL imageURL,
    required Rate rate,
    required Nutrition nutrition,
    required Description desc,
    required bool isLike,
    required Discount discount,
  }) = _Product;

  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit
        .andThen(price.failureOrUnit)
        .andThen(imageURL.failureOrUnit)
        .andThen(rate.failureOrUnit)
        .andThen(nutrition.failureOrUnit)
        .andThen(desc.failureOrUnit)
        .andThen(discount.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }

  CartItem toCartItem(int quantity) {
    return CartItem(
      id: this.id,
      name: name,
      imageURL: imageURL,
      currentPrice: price,
      oldPrice: Price(price.getOrCrash() +
          price.getOrCrash() * discount.getOrCrash()),
      saved: Price(price.getOrCrash() * discount.getOrCrash()),
      quantity: Quantity(quantity),
    );
  }

}
