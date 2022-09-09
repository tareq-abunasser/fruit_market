import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/entities/exceptions.dart';
import '../../../../core/entities/failures.dart';
import '../../../../core/services/network_info.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/i_account_repository.dart';
import '../datasources/account_local_data_source.dart';
import '../datasources/account_remote_data_source.dart';
import '../models/user_dtos.dart';

@LazySingleton(as: IAccountRepository)
class AccountRepository extends IAccountRepository {
  final AccountLocalDataSource _accountLocalDataSourceImpl;
  final AccountRemoteDataSource _accountRemoteDataSourceImpl;
  final NetworkInfo _networkInfo;

  AccountRepository(
    this._accountLocalDataSourceImpl,
    this._accountRemoteDataSourceImpl,
    this._networkInfo,
  );

  @override
  Future<Either<Failure, Unit>> addAccountData(User user) async {
    printInfo(info: 'function addAccountData');
    UserDTO userDTO = UserDTO.fromDomain(user);
    try {
      if (await _networkInfo.isConnected) {
        _accountRemoteDataSourceImpl.addAccountData(userDTO);
      } else {
        return left(const Failure.internet());
      }
      _accountLocalDataSourceImpl.cacheAccountData(userDTO);
      return right(unit);
    } on ServerException {
      return left(const Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteAccountData() async {
    printInfo(info: 'function deleteAccountData');
    try {
      if (await _networkInfo.isConnected) {
        _accountRemoteDataSourceImpl.deleteAccountData();
      } else {
        return left(const Failure.internet());
      }
      _accountLocalDataSourceImpl.deleteAccountData();
      return right(unit);
    } on ServerException {
      return left(const Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, Unit>> updateAccountData(User user) async {
    printInfo(info: 'function updateAccountData');
    UserDTO userDTO = UserDTO.fromDomain(user);
    try {
      if (await _networkInfo.isConnected) {
        _accountRemoteDataSourceImpl.addAccountData(userDTO);
      } else {
        return left(const Failure.internet());
      }
      _accountLocalDataSourceImpl.cacheAccountData(userDTO);
      return right(unit);
    } on ServerException {
      return left(const Failure.serverError());
    }
  }

  @override
  Future<Option<Either<Failure, User>>> getAccountData() async {
    printInfo(info: 'function getAccountData');
    UserDTO? userDto;
    try {
      userDto = _accountLocalDataSourceImpl.getAccountData();
      if (userDto != null) {
        return optionOf(right(userDto.toDomain()));
      }

      if (await _networkInfo.isConnected) {
        UserDTO? userDto = await _accountRemoteDataSourceImpl.getAccountData();
        if (userDto != null) {
          _accountLocalDataSourceImpl.cacheAccountData(userDto);
          return optionOf(right(userDto.toDomain()));
        }
        return none();
      } else {
        return optionOf(left(const Failure.internet()));
      }
    } on ServerException {
      return optionOf(left(const Failure.serverError()));
    }
  }

  @override
  Future<Either<Failure, Unit>> uploadProfileImageFile(File imageFile) async {
    printInfo(info: 'function uploadProfileImageFile');
    try {
      if (await _networkInfo.isConnected) {
        await _accountRemoteDataSourceImpl.uploadProfileImageAsFile(imageFile);
        return right(unit);
      } else {
        return left(const Failure.internet());
      }
    } on ServerException {
      return left(const Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, String>> getProfileImageURL() async {
    printInfo(info: 'function getProfileImageURL');
    try {
      if (await _networkInfo.isConnected) {
        String imageURL =
            await _accountRemoteDataSourceImpl.getProfileImageURL();
        return right(imageURL);
      } else {
        return left(const Failure.internet());
      }
    } on ServerException {
      return left(const Failure.serverError());
    }
  }
}
