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
    required Product product,
    required Quantity quantity,
  }) = _CartItem;

  Option<ValueFailure<dynamic>> get failureOption {
    return product.failureOption.fold(
        () => quantity.failureOrUnit.fold((f) => some(f), (_) => none()),
        (f) => none());
  }

  factory CartItem.fromProduct(Product product, int quantity) {
    return CartItem(
      id: UniqueId(),
      product: product,
      quantity: Quantity(quantity),
    );
  }

  factory CartItem.empty() {
    return CartItem(
      id: UniqueId(),
      product: Product.empty(),
      quantity: Quantity(1),
    );
  }

  Price get oldPrice {
    return Price(product.price.getOrCrash() +
        product.price.getOrCrash() * product.discount.getOrCrash() / 100);
  }

  Price get saved {
    return Price(
        product.price.getOrCrash() * product.discount.getOrCrash() / 100);
  }
}
