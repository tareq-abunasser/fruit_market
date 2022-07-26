import 'package:dartz/dartz.dart';
import 'package:uuid/uuid.dart';

import '../../../../core/entities/failures.dart';
import '../../../../core/entities/value_objects.dart';
import '../../../../core/entities/value_validators.dart';

class EmailAddress extends ValueObject<String, String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }

  const EmailAddress._(this.value);
}
