import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/entities/failures.dart';
import '../../../../core/entities/value_objects.dart';
import '../../../cart/domain/entities/cart_item.dart';
import '../../../cart/domain/entities/value_objects.dart';
import 'package:intl/intl.dart';

part 'order_item.freezed.dart';

@freezed
abstract class OrderItem implements _$OrderItem {
  const OrderItem._();

  const factory OrderItem({
    required UniqueId id,
    required CartItem cartItem,
    required DateTime orderAt,
    required double rate,
  }) = _OrderItem;

  factory OrderItem.empty() {
    return OrderItem(
      id: UniqueId(),
      cartItem: CartItem.empty(),
      rate: 0,
      orderAt: DateTime.now(),
    );
  }

  factory OrderItem.fromCartItem(CartItem cartItem) {
    return OrderItem(
      id: UniqueId(),
      cartItem: cartItem,
      rate: 0,
      orderAt: DateTime.now(),
    );
  }

  Option<ValueFailure<dynamic>> get failureOption {
    return cartItem.failureOption.fold(() => none(), (f) => some(f));
  }
  get orderAtFormatted {
    final DateFormat formatter = DateFormat('yyyy-MM-dd HH:mm');
    final String formatted = formatter.format(orderAt);
    return  formatted; // something like 2013-04-20
  }
}
