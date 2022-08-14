import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/entities/failures.dart';
import '../entities/user.dart';
import '../repositories/i_account_repository.dart';

@LazySingleton()
class GetUserInfo {
  final IAccountRepository _repository;

  GetUserInfo(this._repository);

  Future<Option<Either<Failure, User>>> call() async {
    print("GetUserInfo");
    return await _repository.getAccountData();
  }
}
