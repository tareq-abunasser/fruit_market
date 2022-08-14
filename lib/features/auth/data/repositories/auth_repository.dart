import 'package:dartz/dartz.dart';
// import 'package:injectable/injectable.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:fruit_market/core/entities/exceptions.dart';
import 'package:fruit_market/core/entities/failures.dart';
import 'package:fruit_market/features/auth/data/datasources/auth_local_data_source.dart';
import 'package:fruit_market/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:fruit_market/features/auth/data/models/user_dtos.dart';
import 'package:fruit_market/features/auth/domain/failures/auth_failure.dart';
import 'package:fruit_market/features/auth/domain/repositories/i_auth_repository.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/utils/network_info.dart';
import '../../domain/entities/user.dart' as _user;
import '../../../../core/firebase/firebase_user_mapper.dart';

@LazySingleton(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
  final AuthLocalDataSource _authLocalDataSourceImpl;
  final AuthRemoteDataSource _authRemoteDataSourceImpl;
  final NetworkInfo _networkInfo;

  AuthRepository(
    this._authRemoteDataSourceImpl,
    this._authLocalDataSourceImpl,
    this._networkInfo,
  );

  @override
  Either<AuthFailure, _user.User> getSignedInUser() {
    try {
      _user.User user = _authRemoteDataSourceImpl.getSignedInUser().toDomain();
      print("5555555");
      print('user: $user');
      return right(user);
    } on UnAuthenticatedException {
      return left(const AuthFailure.unAuthenticated());
    } catch (e) {
      return left(const AuthFailure.unknown());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final bool isInternetConnected = await _networkInfo.isConnected;
      if (isInternetConnected) {
        await _authRemoteDataSourceImpl.signInWithGoogle();
        if (getSignedInUser().isRight()) {
          await _authLocalDataSourceImpl
              .cacheSignedInUser(_authRemoteDataSourceImpl.getSignedInUser());
        } else {
          return left(const AuthFailure.unknown());
        }
        return right(unit);
      } else {
        return left(const AuthFailure.internet());
      }
    } on ServerException {
      return left(const AuthFailure.serverError());
    } catch (e) {
      return left(const AuthFailure.unknown());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithFacebook() async {
    try {
      if (await _networkInfo.isConnected) {
        await _authRemoteDataSourceImpl.signInWithFacebook();

        if (getSignedInUser().isRight()) {
          await _authLocalDataSourceImpl
              .cacheSignedInUser(_authRemoteDataSourceImpl.getSignedInUser());
        } else {
          return left(const AuthFailure.unknown());
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

  @override
  Future<void> signOut() => Future.wait([
        _authRemoteDataSourceImpl.signOut(),
        _authLocalDataSourceImpl.signOut(),
      ]);
}
