import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
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
    print("111111111111111");
    CartItem cartItem = CartItem.fromFavourite(item, quantity);
    print("55555555555555555555");

    return await _addCartItem(cartItem);
  }

// CartItem favouriteItemToCartItem(FavouriteItem item, int quantity) {
//   print("2");
//
//   printInfo(info: "function favouriteItemToCartItem");
//   printInfo(info:'error in favouriteItemToCartItem');
//   printInfo(info: item.toString());
//   print("3");

// CartItem cartItem = CartItem(
//   id: item.id,
//   name: item.name,
//   imageURL: item.imageURL,
//   currentPrice: item.price,
//   oldPrice: Price(item.price.getOrCrash() +
//       item.price.getOrCrash() * item.discount.getOrCrash()),
//   saved: Price(item.price.getOrCrash() * item.discount.getOrCrash()),
//   quantity: Quantity(quantity),
// );
// printInfo(info: cartItem.toString());
// print("***********");
// print(item.price.getOrCrash() +
//     item.price.getOrCrash() * item.discount.getOrCrash() / 100);
// print(item.price.getOrCrash());
// print(item.price.getOrCrash() * item.discount.getOrCrash());
// print(item.price.getOrCrash() * item.discount.getOrCrash()/100);
// print("4");
//
// return CartItem(
//   id: item.id,
//   name: item.name,
//   imageURL: item.imageURL,
//   currentPrice: item.price,
//   oldPrice: Price(item.price.getOrCrash() +
//       item.price.getOrCrash() * item.discount.getOrCrash() / 100),
//   saved: Price(item.price.getOrCrash() * item.discount.getOrCrash()/ 100),
//   quantity: Quantity(quantity),
// );
// }
}
