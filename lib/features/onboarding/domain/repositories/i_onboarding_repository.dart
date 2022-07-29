import 'package:dartz/dartz.dart';

import '../../../../core/entities/failures.dart';
import '../entities/user.dart';

abstract class IAccountRepository {
  Future<Either<Failure, User>> getAccountData();
  Future<Either<Failure, User>> updateAccountData(User user);
  bool isFirstTimeOpenApp();
  Future<Either<Failure, Unit>> addAccountData(User user);
  Future<Either<Failure, Unit>> deleteAccountData();
}
