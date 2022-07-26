import 'package:dartz/dartz.dart';
import 'package:fruit_market/features/home/domain/entities/value_objects.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/entities/failures.dart';
import '../../../../core/entities/value_objects.dart';
import '../../../cart/domain/entities/cart_item.dart';
import '../../../cart/domain/entities/value_objects.dart';
import '../../../cart/domain/repositories/i_cart_repository.dart';
import '../../../home/domain/entities/product.dart';

@LazySingleton()
class AddCartItem {
  final ICartRepository _repository;

  AddCartItem(this._repository);

  Future<Either<Failure, Unit>> call(CartItem cartItem) async {
    // CartItem cartItem = convertProductToCartItem(product, quantity);
    return await _repository.addToCart(cartItem);
  }
  // CartItem convertProductToCartItem(Product product, int quantity) {
  //   return CartItem(
  //     id: product.id,
  //     name: product.name,
  //     imageURL: product.imageURL,
  //     currentPrice: product.price,
  //     oldPrice: Price(product.price.getOrCrash() +
  //         product.price.getOrCrash() * product.discount.getOrCrash()),
  //     saved: Price(product.price.getOrCrash() * product.discount.getOrCrash()),
  //     quantity: Quantity(quantity),
  //   );
  // }
}

