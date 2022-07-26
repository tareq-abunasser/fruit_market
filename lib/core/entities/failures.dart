import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.exceedingLength({
    required T failedValue,
    required int max,
  }) = ExceedingLength<T>;

  const factory ValueFailure.empty({
    required T failedValue,
  }) = Empty<T>;

  const factory ValueFailure.multiline({
    required T failedValue,
  }) = Multiline<T>;

  const factory ValueFailure.listTooLong({
    required T failedValue,
    required int max,
  }) = ListTooLong<T>;

  const factory ValueFailure.invalidEmail({
    required T failedValue,
  }) = InvalidEmail<T>;

  const factory ValueFailure.shortPassword({
    required T failedValue,
  }) = ShortPassword<T>;

  const factory ValueFailure.differentPassword({
    required T failedValue,
  }) = DifferentPassword<T>;

  const factory ValueFailure.invalidPhoneNumber({
    required T failedValue,
  }) = InvalidPhoneNumber<T>;
  const factory ValueFailure.invalidQuantity({
    required T failedValue,
  }) = InvalidQuantity<T>;
}

@freezed
abstract class Failure with _$Failure {
  const factory Failure.internet() = Internet;
  const factory Failure.serverError() = ServerError;

}