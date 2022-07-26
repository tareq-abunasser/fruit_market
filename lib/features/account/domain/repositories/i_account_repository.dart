import 'package:dartz/dartz.dart';

import '../../../../core/entities/failures.dart';
import '../entities/user.dart';

abstract class IAccountRepository {
  Future<Either<Failure, User>> getAccountData();
}
