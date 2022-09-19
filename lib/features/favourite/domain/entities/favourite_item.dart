import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fruit_market/features/product/domain/entities/product.dart';

import '../../../../core/entities/failures.dart';
import '../../../../core/entities/value_objects.dart';
import '../../../cart/domain/entities/cart_item.dart';
import '../../../cart/domain/entities/value_objects.dart';

part 'favourite_item.freezed.dart';

@freezed
abstract class FavouriteItem implements _$FavouriteItem {
  const FavouriteItem._();

  const factory FavouriteItem({
    required UniqueId id,
    required Product product,
  }) = _FavouriteItem;

  Option<ValueFailure<dynamic>> get failureOption {
    return product.failureOption;
  }

  factory FavouriteItem.fromProduct(Product product) {
    return FavouriteItem(
      id: UniqueId(),
      product: product,
    );
  }

  factory FavouriteItem.empty() {
    return FavouriteItem(
      id: UniqueId(),
      product: Product.empty(),
    );
  }
}
