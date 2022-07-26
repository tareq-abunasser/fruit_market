import 'package:dartz/dartz.dart';
import 'package:fruit_market/features/auth/domain/faliures/auth_failure.dart';
import 'package:injectable/injectable.dart';

import '../entities/user_info.dart';
import '../repositories/i_auth_repository.dart';

@LazySingleton()
class CompleteUserInfo  {
  final IAuthRepository repository;

  CompleteUserInfo(this.repository);

  Future<Either<AuthFailure, Unit>> call(UserInfo userInfo) async {
    return await repository.completeUserInfo(userInfo);
  }
}
