import 'package:dartz/dartz.dart';

import '../../../../core/entities/failures.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/i_account_repository.dart';

class AccountRepository extends IAccountRepository {
  Future<Either<Failure, User>> getAccountData(){
    throw UnimplementedError();
    // return Future.value(Right());
  }
}

