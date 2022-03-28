import 'package:dartz/dartz.dart';
// import 'package:injectable/injectable.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:fruit_market/features/auth/domain/faliures/auth_failure.dart';
import 'package:fruit_market/features/auth/domain/repositories/i_auth_repository.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../../domain/entities/user.dart' as _user;
import './firebase_user_mapper.dart';

// @LazySingleton(as: IAuthFacade)
class AuthRepository implements IAuthRepository {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final FacebookAuth _facebookAuth;

  AuthRepository(
    this._firebaseAuth,
    this._googleSignIn,
    this._facebookAuth,
  );

  @override
  Future<Option<_user.User>> getSignedInUser() async =>
      optionOf(_firebaseAuth.currentUser?.toDomain());

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    final googleUser = await _googleSignIn.signIn();
    if (googleUser == null) {
      return left(const AuthFailure.serverError());
    }
    final googleAuthentication = await googleUser.authentication;
    final authCredential = GoogleAuthProvider.credential(
      idToken: googleAuthentication.idToken,
      accessToken: googleAuthentication.accessToken,
    );

    try {
      await _firebaseAuth.signInWithCredential(authCredential);
      return right(unit);
    } on FirebaseAuthException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }


  @override
  Future<Either<AuthFailure, Unit>> signInWithFacebook() async{
  // Trigger the sign-in flow
  final LoginResult loginResult = await _facebookAuth.login();

    if (loginResult == null) {
      return left(const AuthFailure.serverError());
    }
  // Create a credential from the access token
  final OAuthCredential facebookAuthCredential = FacebookAuthProvider.credential(loginResult.accessToken!.token);

  // Once signed in, return the UserCredential
      try {
      await _firebaseAuth.signInWithCredential(facebookAuthCredential);
      return right(unit);
    } on FirebaseAuthException catch (_) {
      return left(const AuthFailure.serverError());
    }

  }

  @override
  Future<void> signOut() => Future.wait([
        _googleSignIn.signOut(),
        _firebaseAuth.signOut(),
      ]);

  @override
  Future<Either<AuthFailure, Unit>> completeUserInfo() {
    // TODO: implement completeUserInfo
    throw UnimplementedError();
  }



}
