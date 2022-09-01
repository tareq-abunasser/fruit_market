import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/entities/failures.dart';
import '../../../../core/entities/value_objects.dart';
import '../../../cart/domain/entities/cart_item.dart';
import '../../../cart/domain/entities/value_objects.dart';
import '../../../cart/domain/usecases/add_cart_item.dart';
import '../entities/favourite_item.dart';

@LazySingleton()
class AddItemToCart {
  final AddCartItem _addCartItem;

  AddItemToCart(this._addCartItem);

  Future<Either<Failure, Unit>> call(FavouriteItem item, int quantity) async {
    CartItem cartItem = favouriteItemToCartItem(item, quantity);
    return await _addCartItem(cartItem);
  }

  CartItem favouriteItemToCartItem(FavouriteItem item, int quantity) {
    return CartItem(
      id: item.id,
      name: item.name,
      imageURL: item.imageURL,
      currentPrice: item.price,
      oldPrice: Price(item.price.getOrCrash() +
          item.price.getOrCrash() * item.discount.getOrCrash()),
      saved: Price(item.price.getOrCrash() * item.discount.getOrCrash()),
      quantity: Quantity(quantity),
    );
  }
}
