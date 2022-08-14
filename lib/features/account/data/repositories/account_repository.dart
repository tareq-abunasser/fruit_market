import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/entities/exceptions.dart';
import '../../../../core/entities/failures.dart';
import '../../../../core/utils/network_info.dart';
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
    UserDTO? userDto;
    try {
      userDto = _accountLocalDataSourceImpl.getAccountData();
      if (userDto != null) {
        print('chaced user ${userDto.toDomain()}');
        return optionOf(right(userDto.toDomain()));
      }

      if (await _networkInfo.isConnected) {
        print('getAccountData1');
        UserDTO? userDto = await _accountRemoteDataSourceImpl.getAccountData();
        print('getAccountData2');

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
    catch (e) {
      print(e.toString());
      return optionOf(left(const Failure.internet()));
    }
  }

  @override
  Future<Either<Failure, Unit>> uploadProfileImageFile(File imageFile) async {
    try {
      if (await _networkInfo.isConnected) {
        await _accountRemoteDataSourceImpl.uploadProfileImageFile(imageFile);
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
