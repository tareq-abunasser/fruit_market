import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

import 'failures.dart';



Either<ValueFailure<String>, int> validatePhoneNumber(
  String input, {
  int phoneLength = 10,
}) {
  int? phoneNumber = int.tryParse(input);
  if (input.length == phoneLength && phoneNumber != null) {
    return right(phoneNumber);
  } else {
    return left(
      ValueFailure.invalidPhoneNumber(failedValue: input),
    );
  }
}

Either<ValueFailure<String>, String> validateMaxStringLength(
    String input,
    int maxLength,
    ) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(
      ValueFailure.exceedingLength(failedValue: input, max: maxLength),
    );
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.empty(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateSingleLine(String input) {
  if (input.contains('\n')) {
    return left(ValueFailure.multiline(failedValue: input));
  } else {
    return right(input);
  }
}

// KtList is not mutable list
// mean you can't modify the list in the memory
// but you can copy it
Either<ValueFailure<KtList<T>>, KtList<T>> validateMaxListLength<T>(
  KtList<T> input,
  int maxLength,
) {
  if (input.size <= maxLength) {
    return right(input);
  } else {
    return left(ValueFailure.listTooLong(
      failedValue: input,
      max: maxLength,
    ));
  }
}

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= 6) {
    return right(input);
  } else {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateEqualsPassword(
    {required String firstPassword, required String secondPassword}) {
  if (firstPassword == secondPassword) {
    return right(firstPassword);
  } else {
    return left(ValueFailure.differentPassword(failedValue: firstPassword));
  }
}


Either<ValueFailure<String>, double> convertRate(Map<String, double>rates){
  double allRates=0;
  rates.forEach((key, value) {
    allRates+=value;
  });
  double rate = allRates/rates.length;
  return right(rate);
}

Either<ValueFailure<String>, int> validateQuantity(int input) {
  if (input >= 1) {
    return right(input);
  } else {
    return left(ValueFailure.invalidQuantity(failedValue: input.toString()));
  }
}