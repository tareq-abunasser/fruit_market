import 'package:fruit_market/features/auth/domain/entities/user.dart';

import '../../../../core/entities/failures.dart';
import 'value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/entities/value_objects.dart';

part 'user_info.freezed.dart';

/// this is entity not value object
/// entity comprise of many value objects

@freezed
abstract class UserInfo implements _$UserInfo {
  const UserInfo._();

  const factory UserInfo({
    required User user,
    required FullName fullName,
    required PhoneNumber phoneNumber,
    required Address address,
  }) = _UserInfo;

  factory UserInfo.empty() => UserInfo(
        user: User(uniqueId: UniqueId()),
        fullName: FullName("username"),
        phoneNumber: PhoneNumber("0000000000"),
        address: Address("country"),
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
