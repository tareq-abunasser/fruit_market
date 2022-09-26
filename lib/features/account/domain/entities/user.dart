import 'package:fruit_market/features/auth/domain/entities/user.dart';

import '../../../../core/entities/failures.dart';
import 'value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/entities/value_objects.dart';

part 'user.freezed.dart';

/// this is entity not value object
/// entity comprise of many value objects

@freezed
abstract class User implements _$User {
  const User._();

  const factory User({
    required UniqueId id,
    required FullName fullName,
    required PhoneNumber phoneNumber,
    required Address address,
    required EmailAddress email,
    required ImageURL imageURL,
  }) = _User;

  factory User.empty() => User(
       id: UniqueId(),
        fullName: FullName(""),
        phoneNumber: PhoneNumber(""),
        address: Address(""),
        email: EmailAddress(""),
        imageURL: ImageURL("https://firebasestorage.googleapis.com/v0/b/fruit-market-project.appspot.com/o/users%2Fdefault_profile.png?alt=media&token=068a1902-7115-4c52-8360-098ce30202dc"),
      );

  // value.fold((f) => some(f), (_) => none())
  Option<ValueFailure<dynamic>> get failureOption {
    /// we will not validate the User because the user contains only UniqueId and UniqueId always return right() and not return left()
    return fullName.failureOrUnit
        .andThen(phoneNumber.failureOrUnit)
        .andThen(address.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}

/// to add a custom method tp frezzed ypu will replace the "with" mixin to implements
/// and add an empty constructor
/// then add the method
