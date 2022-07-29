import 'package:dartz/dartz.dart';
import 'package:fruit_market/features/auth/domain/faliures/auth_failure.dart';
import 'package:injectable/injectable.dart';

import '../entities/user.dart';
import '../entities/user_info.dart';
import '../repositories/i_auth_repository.dart';

@LazySingleton()
class GetUserInfo  {
  final IAuthRepository repository;

  GetUserInfo(this.repository);

  Future<Either<AuthFailure, UserInfo>> getUser() async {
    return await repository.getUserInfo().then((value) => value.fold(() => left(AuthFailure.unknown()), id));
  }
}
