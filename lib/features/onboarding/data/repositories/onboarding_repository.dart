import 'package:dartz/dartz.dart';

import '../../../../core/entities/failures.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/i_account_repository.dart';

class AccountRepository extends IAccountRepository {
  Future<Either<Failure, User>> getAccountData(){
    throw UnimplementedError();
    // return Future.value(Right());
  }

  @override
  bool isFirstTimeOpenApp() {
    return _authLocalDataSourceImpl.isFirstTimeToOpenApp();
  }

  @override
  Future<Either<AuthFailure, Unit>> completeUserInfo(
      _userInfo.UserInfo userInfo) async {
    UserInfoDTO userInfoDTO = UserInfoDTO.fromDomain(userInfo);
    try {
      _authRemoteDataSourceImpl.completeUserInfo(userInfoDTO);
      _authLocalDataSourceImpl.cacheUserInfo(userInfoDTO);
      return right(unit);
    } on ServerException {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Option<Either<AuthFailure, _userInfo.UserInfo>>> getUserInfo() async {
    UserInfoDTO userInfoDto;

    try {
      userInfoDto = _authLocalDataSourceImpl.getUserInfo();
      print(userInfoDto.toString());
      return optionOf(right(userInfoDto.toDomain()));
    } on CacheException {
      try {
        if (await _networkInfo.isConnected) {
          UserInfoDTO? userInfoDto =
          await _authRemoteDataSourceImpl.getUserInfo();
          if (userInfoDto != null) {
            _authLocalDataSourceImpl.cacheUserInfo(userInfoDto);
            return optionOf(right(userInfoDto.toDomain()));
          }
          return none();
        } else {
          return optionOf(left(const AuthFailure.internet()));
        }
      } on ServerException {
        return optionOf(left(const AuthFailure.serverError()));
      }
    }
  }
}

