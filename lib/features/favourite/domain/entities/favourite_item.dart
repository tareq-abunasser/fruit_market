import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/entities/failures.dart';
import '../../../../core/entities/value_objects.dart';
import '../../../cart/domain/entities/cart_item.dart';
import '../../../cart/domain/entities/value_objects.dart';

part 'favourite_item.freezed.dart';

@freezed
abstract class FavouriteItem implements _$FavouriteItem {
  const FavouriteItem._();

  const factory FavouriteItem({
    required UniqueId id,
    required ItemName name,
    required Price price,
    required ImageURL imageURL,
    required Rate rate,
    required Discount discount,
  }) = _Product;

  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit
        .andThen(price.failureOrUnit)
        .andThen(imageURL.failureOrUnit)
        .andThen(rate.failureOrUnit)
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
