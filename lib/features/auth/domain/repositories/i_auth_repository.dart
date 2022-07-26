import 'package:dartz/dartz.dart';
import 'package:fruit_market/features/auth/domain/entities/user_info.dart';

import '../entities/user.dart';
import '../faliures/auth_failure.dart';

//The naive way would be to return  Future<AuthFailure> from the methods.
// This, however, would force us to use null whenever a failure doesn't occur
//It's much better to use our trusted friend called Either where we pass around failures inside the Left side of it.
// But what are we going to put into the Right side?
// Can we create something like Either<AuthFailure, void>?
//No. Dart's void is only a keyword, not a type, and it cannot be used as a generic type parameter.
// Swift's Void is actually a type, so you can use it in generics.
// Kotlin uses Unit which is also a regular type.
// Thankfully, the dartz package provides us, Dart programmers, with a Unit type too!

abstract class IAuthRepository {
  Either<AuthFailure, User> getSignedInUser();

  Future<Either<AuthFailure, Unit>> signInWithGoogle();

  Future<Either<AuthFailure, Unit>> signInWithFacebook();

  Future<void> signOut();

  Future<Either<AuthFailure, Unit>> completeUserInfo(UserInfo userInfo);

  Future<Option<Either<AuthFailure, UserInfo>>> getUserInfo();

  bool isFirstTimeOpenApp();
}
