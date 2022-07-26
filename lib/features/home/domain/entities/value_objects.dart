import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../../core/entities/failures.dart';
import '../../../../core/entities/value_objects.dart';
import '../../../../core/entities/value_validators.dart';

class ItemName extends ValueObject<String, String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ItemName(String input) {
    return ItemName._(
      validateStringNotEmpty(input),
    );
  }

  const ItemName._(this.value);
}

class Price extends ValueObject<String, double> {
  @override
  final Either<ValueFailure<String>, double> value;

  factory Price(double input) {
    return Price._(
      right(input),
    );
  }

  const Price._(this.value);
}

class Rate extends ValueObject<String, double> {
  @override
  final Either<ValueFailure<String>, double> value;

  factory Rate(Map<String, double> input) {
    return Rate._(
      convertRate(input),
    );
  }

  const Rate._(this.value);
}

class Nutrition extends ValueObject<String, Map<String, double>> {
  @override
  final Either<ValueFailure<String>, Map<String, double>> value;

  factory Nutrition(Map<String, double> input) {
    return Nutrition._(
      right(input),
    );
  }

  const Nutrition._(this.value);
}


class ImageURL extends ValueObject<String, String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ImageURL(String input) {
    return ImageURL._(
      validateStringNotEmpty(input),
    );
  }

  const ImageURL._(this.value);
}

class Discount extends ValueObject<String, double> {
  @override
  final Either<ValueFailure<String>, double> value;

  factory Discount(double input) {
    return Discount._(
      right(input),
    );
  }

  const Discount._(this.value);
}

class Description extends ValueObject<String, String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Description(String input) {
    return Description._(
      validateStringNotEmpty(input),
    );
  }

  const Description._(this.value);
}

class IsLike extends ValueObject<String, bool> {
  @override
  final Either<ValueFailure<String>, bool> value;

  factory IsLike(List input) {
    return IsLike._(
        right(input.contains(FirebaseAuth.instance.currentUser!.uid))
    );
  }

  const IsLike._(this.value);
}