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
    CartItem cartItem = CartItem.fromProduct(item.product, quantity);
    print("55555555555555555555");

    return await _addCartItem(cartItem);
  }

}
