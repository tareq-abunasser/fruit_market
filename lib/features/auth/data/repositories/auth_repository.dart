import 'package:dartz/dartz.dart';
import 'package:fruit_market/core/entities/exceptions.dart';
import 'package:fruit_market/features/auth/data/datasources/auth_local_data_source.dart';
import 'package:fruit_market/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:fruit_market/features/auth/domain/failures/auth_failure.dart';
import 'package:fruit_market/features/auth/domain/repositories/i_auth_repository.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/services/network_info_service.dart';
import '../../domain/entities/user.dart' as _user;

@LazySingleton(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
  final AuthLocalDataSource _authLocalDataSourceImpl;
  final AuthRemoteDataSource _authRemoteDataSourceImpl;
  final NetworkInfoService _networkInfo;

  AuthRepository(
    this._authRemoteDataSourceImpl,
    this._authLocalDataSourceImpl,
    this._networkInfo,
  );

  @override
  Either<AuthFailure, _user.User> getSignedInUser() {
    printInfo(info: 'class:AuthRepository , function : getSignedInUser');
    try {
      _user.User user = _authRemoteDataSourceImpl.getSignedInUser().toDomain();
      return right(user);
    } on UnAuthenticatedException {
      return left(const AuthFailure.unAuthenticated());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    printInfo(info: 'class:AuthRepository , function : signInWithGoogle');
    return _signIn(_authRemoteDataSourceImpl.signInWithGoogle);
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithFacebook() async {
    printInfo(info: 'class:AuthRepository , function : signInWithFacebook');
    return _signIn(_authRemoteDataSourceImpl.signInWithFacebook);
  }

  @override
  Future<void> signOut() => Future.wait([
        _authRemoteDataSourceImpl.signOut(),
        _authLocalDataSourceImpl.signOut(),
      ]);

  Future<Either<AuthFailure, Unit>> _signIn(Function f) async {
    printInfo(info: 'class:AuthRepository , function : _signIn');
    try {
      if (await _networkInfo.isConnected) {
        await f();

        if (getSignedInUser().isRight()) {
          _authLocalDataSourceImpl
              .cacheSignedInUser(_authRemoteDataSourceImpl.getSignedInUser());
        } else {
          return left(const AuthFailure.unAuthenticated());
        }
      } else {
        return left(const AuthFailure.internet());
      }

      return right(unit);
    } on ServerException {
      return left(const AuthFailure.serverError());
    } catch (e) {
      return left(const AuthFailure.unknown());
    }
  }
}
