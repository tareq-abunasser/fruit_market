import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/entities/failures.dart';
import '../entities/user.dart';
import '../repositories/i_account_repository.dart';

@LazySingleton()
class UpdateUserInfo {
  final IAccountRepository _repository;

  UpdateUserInfo(this._repository);

  Future<Either<Failure, Unit>> call(User user) async {
    return await _repository.updateAccountData(user);
  }
}
