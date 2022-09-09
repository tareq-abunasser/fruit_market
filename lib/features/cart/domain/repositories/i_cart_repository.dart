import 'package:dartz/dartz.dart';
import 'package:fruit_market/core/entities/failures.dart';

import '../entities/cart_item.dart';

abstract class ICartRepository {
  Future<Either<Failure, List<CartItem>>> getCart();

  Future<Either<Failure, Unit>> addToCart(CartItem cartItem);

  Future<Either<Failure, Unit>> removeFromCart(CartItem cartItem);

  Future<Either<Failure, Unit>> clearCart();
  Future<Either<Failure, Unit>> updateCartItem(CartItem cartItem);
  Future<Either<Failure, Unit>> updateCart(List<CartItem> cartItems);
}
