import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fruit_market/core/entities/failures.dart';

part 'auth_failure.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure {
  // User "taps out" of the 3rd party sign-in flow (Google in our case)
  const factory AuthFailure.cancelledByUser() = CancelledByUser;

  // There is an error on the auth server
  // Serves as a "catch all" failure if we don't know what exactly went wrong
  const factory AuthFailure.serverError() = ServerError;

  // User wants to register with an email which is already in use
  const factory AuthFailure.emailAlreadyInUse() = EmailAlreadyInUse;

  // User enters an invalid combination of email and password
  const factory AuthFailure.invalidEmailAndPasswordCombination() =
      InvalidEmailAndPasswordCombination;
  //Unknown
  const factory AuthFailure.unknown() = UnknownError;

  const factory AuthFailure.unAuthenticated() = UnAuthenticatedError;
  const factory AuthFailure.internet() = Internet;
}
