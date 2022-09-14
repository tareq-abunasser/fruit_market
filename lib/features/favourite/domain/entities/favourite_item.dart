import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fruit_market/features/product/domain/entities/product.dart';

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

  factory FavouriteItem.fromProduct(Product product){
    return FavouriteItem(
      id: product.id,
      name: product.name,
      imageURL: product.imageURL,
      price: product.price,
      rate: product.rate,
      discount: product.discount,
    );
  }
  // CartItem toCartItem(int quantity) {
  //   print('toCartItem');
  //   print(toString());
  //   return CartItem(
  //     id: this.id,
  //     name: name,
  //     imageURL: imageURL,
  //     currentPrice: price,
  //     oldPrice: Price(price.getOrCrash() +
  //         price.getOrCrash() * discount.getOrCrash() / 100),
  //     saved: Price(price.getOrCrash() * discount.getOrCrash() / 100),
  //     quantity: Quantity(quantity),
  //   );
  // }
}
