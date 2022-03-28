import 'package:dartz/dartz.dart';
import 'package:uuid/uuid.dart';

import '../../../../core/entities/failures.dart';
import '../../../../core/entities/value_objects.dart';
import '../../../../core/entities/value_validators.dart';

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
