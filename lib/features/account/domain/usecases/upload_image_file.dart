import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/entities/failures.dart';
import '../repositories/i_account_repository.dart';

@LazySingleton()
class UploadImageFile {
  final IAccountRepository _repository;

  UploadImageFile(this._repository);

  Future<Either<Failure, Unit>> call(File imageFile) async {
    print('UploadImageFile call${imageFile.path}');
    return await _repository.uploadProfileImageFile(imageFile);
  }
}
