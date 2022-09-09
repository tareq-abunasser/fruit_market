import 'package:dartz/dartz.dart';
import 'package:fruit_market/core/entities/value_objects.dart';
import 'package:fruit_market/features/cart/domain/entities/cart_item.dart';
import 'package:fruit_market/features/orders/domain/entities/order_item.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/entities/failures.dart';
import '../../../orders/domain/usecases/add_order_items.dart';

@LazySingleton()
class AddOrderItemsFomCart {
  final AddOrderItems _addOrderItems;

  AddOrderItemsFomCart(this._addOrderItems);

  Future<Either<Failure, Unit>> call(List<CartItem> items) async {
    print('AddOrderItemsFomCart.call');
    print(items);

    List<OrderItem> orderItems =
        items.map((item) => cartItemToOrderItem(item)).toList();
    return await _addOrderItems(orderItems);
  }

  OrderItem cartItemToOrderItem(CartItem item) {
    return OrderItem.empty().copyWith(
      id: item.id,
      name: item.name,
      imageURL: item.imageURL,
    );
  }
}
