import 'package:flutter/material.dart';
import 'package:fruit_market/features/orders/domain/entities/order_item.dart';

class ErrorOrderItemCard extends StatelessWidget {
  final OrderItem _orderItem;

  const ErrorOrderItemCard(
    this._orderItem, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).errorColor,
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Column(
          children: <Widget>[
            Text(
              'Invalid product, please, contact support',
              style: Theme.of(context)
                  .primaryTextTheme
                  .bodyText2
                  ?.copyWith(fontSize: 18),
            ),
            const SizedBox(height: 2),
            Text(
              'Details for nerds:',
              style: Theme.of(context).primaryTextTheme.bodyText2,
            ),
            Text(
              _orderItem.failureOption.fold(() => '', (f) => f.toString()),
              style: Theme.of(context).primaryTextTheme.bodyText2,
            ),
          ],
        ),
      ),
    );
  }
}
