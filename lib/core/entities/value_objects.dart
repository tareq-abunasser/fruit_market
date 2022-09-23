import 'package:firebase_auth/firebase_auth.dart';
import 'package:uuid/uuid.dart';
import 'package:flutter/material.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import 'errors.dart';
import 'failures.dart';
import 'value_validators.dart';

@immutable
abstract class ValueObject<F, T> {
  const ValueObject();

  Either<ValueFailure<F>, T> get value;

  /// Throws [UnexpectedValueError] containing the [ValueFailure]
  T getOrCrash() {
    /// id = identity - same as writing (right) => right
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }

  Option<ValueFailure<dynamic>> get failureOption {
    return value.fold((f) => some(f), (_) => none());
  }

  bool isValid() => value.isRight();

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ValueObject<F, T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}

class UniqueId extends ValueObject<String, String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory UniqueId() {
    /// this used when you want to create local unique id
    /// like when you create new mission you will give him the id
    return UniqueId._(
      right(const Uuid().v1()),
    );
  }

  factory UniqueId.fromUniqueString(String uniqueId) {
    /// in this factory we must trust in the uniqueId string because we will not check it's uniqnesses
    /// this UniqueId always come from firebase , when you create new user in firebase , the firebase give it's the id not you
    return UniqueId._(
      right(uniqueId),
    );
  }

  const UniqueId._(this.value);
}

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
        right(input.contains(FirebaseAuth.instance.currentUser!.uid)));
  }

  const IsLike._(this.value);
}
