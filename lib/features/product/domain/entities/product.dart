import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/entities/failures.dart';
import '../../../../core/entities/value_objects.dart';
import '../../../cart/domain/entities/cart_item.dart';
import '../../../cart/domain/entities/value_objects.dart';

part 'product.freezed.dart';

@freezed
abstract class Product implements _$Product {
  const Product._();

  const factory Product({
    required UniqueId id,
    required UniqueId parentId,
    required ItemName name,
    required Price price,
    required ImageURL imageURL,
    required Map<String, double> rates,
    required Nutrition nutrition,
    required Description desc,
    required List<String> likes,
    required Discount discount,
  }) = _Product;

  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit
        .andThen(price.failureOrUnit)
        .andThen(imageURL.failureOrUnit)
        .andThen(nutrition.failureOrUnit)
        .andThen(desc.failureOrUnit)
        .andThen(discount.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }

  factory Product.empty() {
    return Product(
      id: UniqueId(),
      name: ItemName(''),
      price: Price(0),
      imageURL: ImageURL(''),
      rates: {},
      nutrition: Nutrition({}),
      desc: Description(''),
      discount: Discount(0),
      likes: [],
      parentId: UniqueId(),
    );
  }

  bool get isLike {
    return likes.contains(FirebaseAuth.instance.currentUser!.uid);
  }

  double get rate {
    double allRates = 0;
    rates.forEach((key, value) {
      allRates += value;
    });
    double rate = allRates / rates.length;
    return rate;
  }
}
