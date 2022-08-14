import 'package:flutter/material.dart';
import 'package:fruit_market/features/favourite/domain/entities/favourite_item.dart';
import 'package:fruit_market/features/home/domain/entities/product.dart';

class ErrorFavouriteProductCard extends StatelessWidget {
  final FavouriteItem _product;

  const ErrorFavouriteProductCard(
    this._product, {
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
              _product.failureOption.fold(() => '', (f) => f.toString()),
              style: Theme.of(context).primaryTextTheme.bodyText2,
            ),
          ],
        ),
      ),
    );
  }
}
