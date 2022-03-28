import 'package:dartz/dartz.dart';
import 'package:fruit_market/features/auth/domain/entities/user.dart';

import '../models/user_info_dtos.dart';

abstract class AuthRemoteDataSource {
  /// Calls the Firebase.
  ///
  /// Throws a [ServerException] for all error codes.
  Future<Option<User>> getSignedInUser();
  Future<Option<UserInfoDTO>> getUserInfo();

  // Future<NumberTriviaModel> getRandomNumberTrivia();
}
