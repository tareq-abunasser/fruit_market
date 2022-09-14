import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fruit_market/features/product/domain/entities/product.dart';
import 'package:get/get.dart';

import '../../../../core/entities/failures.dart';
import '../../../../core/entities/value_objects.dart';
import '../../../favourite/domain/entities/favourite_item.dart';
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

  factory CartItem.fromFavourite(FavouriteItem item, int quantity) {
    print('CartItem.fromFavourite');
    print(item);
    print(quantity);
    return CartItem(
      id: item.id,
      name: item.name,
      imageURL: item.imageURL,
      currentPrice: item.price,
      oldPrice: Price(item.price.getOrCrash() +
          item.price.getOrCrash() * item.discount.getOrCrash() / 100),
      saved: Price(item.price.getOrCrash() * item.discount.getOrCrash() / 100),
      quantity: Quantity(quantity),
    );
  }

  factory CartItem.fromProduct(Product product) {
    return CartItem(
      id: product.id,
      name: product.name,
      imageURL: product.imageURL,
      currentPrice: product.price,
      oldPrice: Price(product.price.getOrCrash() +
          product.price.getOrCrash() * product.discount.getOrCrash() / 100),
      saved: Price(
          product.price.getOrCrash() * product.discount.getOrCrash() / 100),
      quantity: Quantity(1),
    );
  }
}
