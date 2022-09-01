import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fruit_market/core/entities/failures.dart';

part 'home_failure.freezed.dart';

@freezed
abstract class HomeFailure with _$HomeFailure {
  // There is an error on the auth server
  // Serves as a "catch all" failure if we don't know what exactly went wrong
  const factory HomeFailure.serverError() = ServerError;

  //Unknown
  const factory HomeFailure.unknown() = UnknownError;

  const factory HomeFailure.internet() = Internet;
}
