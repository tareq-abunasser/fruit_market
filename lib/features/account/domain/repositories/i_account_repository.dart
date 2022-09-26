import 'dart:io';

import 'package:dartz/dartz.dart';

import '../../../../core/entities/failures.dart';
import '../entities/user.dart';

abstract class IAccountRepository {
  Future<Option<Either<Failure, User>>> getAccountData();

  Future<Either<Failure, Unit>> updateAccountData(User user);

  Future<Either<Failure, Unit>> addAccountData(User user);

  Future<Either<Failure, Unit>> deleteAccountData();

  Future<Either<Failure, Unit>> uploadProfileImageFile(File imageFile);
  Future<Either<Failure, String>> getProfileImageURL();
}
