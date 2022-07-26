import 'package:dartz/dartz.dart';
import 'package:fruit_market/features/auth/domain/faliures/auth_failure.dart';
import 'package:injectable/injectable.dart';

import '../repositories/i_auth_repository.dart';

@LazySingleton()
class SignOut  {
  final IAuthRepository repository;

  SignOut(this.repository);

  Future<void> call() async {
    await repository.signOut();
  }
}
