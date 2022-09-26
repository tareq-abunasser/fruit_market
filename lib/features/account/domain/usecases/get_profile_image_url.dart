import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/entities/failures.dart';
import '../repositories/i_account_repository.dart';

@LazySingleton()
class GetProfileImageURL {
  final IAccountRepository _repository;

  GetProfileImageURL(this._repository);

  Future<Either<Failure, String>> call() async {
    return await _repository.getProfileImageURL();
  }
}
