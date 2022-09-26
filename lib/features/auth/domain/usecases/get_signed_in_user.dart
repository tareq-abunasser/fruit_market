import 'package:dartz/dartz.dart';
import 'package:fruit_market/features/auth/domain/failures/auth_failure.dart';
import 'package:injectable/injectable.dart';

import '../entities/user.dart';
import '../repositories/i_auth_repository.dart';

@LazySingleton()
class GetSignedInUser  {
  final IAuthRepository repository;

  GetSignedInUser(this.repository);

  Either<AuthFailure, User> call()  {
    return  repository.getSignedInUser();
  }
}
