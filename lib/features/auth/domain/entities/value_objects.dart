import 'package:dartz/dartz.dart';
import 'package:uuid/uuid.dart';

import '../../../../core/entities/failures.dart';
import '../../../../core/entities/value_objects.dart';
import '../../../../core/entities/value_validators.dart';

class PhoneNumber extends ValueObject<String, int> {
  @override
  final Either<ValueFailure<String>, int> value;

  factory PhoneNumber(String phone) {
    /// in this factory we must insure that the string is a correct phone number
    return PhoneNumber._(validatePhoneNumber(phone));
  }

  const PhoneNumber._(this.value);
}

class Address extends ValueObject<String, String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Address(String input) {
    return Address._(
      validateStringNotEmpty(input),
    );
  }

  const Address._(this.value);
}

class FullName extends ValueObject<String, String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory FullName(String input) {
    return FullName._(
      validateStringNotEmpty(input),
    );
  }

  const FullName._(this.value);
}
