import 'package:dartz/dartz.dart';
import 'package:fruit_market/features/auth/domain/failures/auth_failure.dart';
import 'package:injectable/injectable.dart';

import '../repositories/i_auth_repository.dart';

@LazySingleton()
class SignInWithGoogle  {
  final IAuthRepository repository;

  SignInWithGoogle(this.repository);

  Future<Either<AuthFailure, Unit>> call() async {
    return await repository.signInWithGoogle();
  }
}
