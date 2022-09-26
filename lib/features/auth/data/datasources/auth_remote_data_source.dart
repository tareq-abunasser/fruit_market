import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:fruit_market/core/entities/exceptions.dart';
import 'package:fruit_market/features/auth/data/models/user_dtos.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/firebase/firebase_user_mapper.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

abstract class AuthRemoteDataSource {
  UserDTO getSignedInUser();

  Future<void> signInWithGoogle();

  Future<void> signInWithFacebook();

  Future<void> signOut();
}

@LazySingleton(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl extends AuthRemoteDataSource {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final FacebookAuth _facebookAuth;

  AuthRemoteDataSourceImpl(
    this._firebaseAuth,
    this._googleSignIn,
    this._facebookAuth,
  );

  @override
  UserDTO getSignedInUser() {
    printInfo(
        info: 'class AuthRemoteDataSourceImpl, function : getSignedInUser');
    UserDTO? userDTO = _firebaseAuth.currentUser?.toDomain();
    if (userDTO == null) {
      throw UnAuthenticatedException();
    }
    return userDTO;

  }

  @override
  Future<void> signInWithFacebook() async {
    printInfo(
        info: 'class AuthRemoteDataSourceImpl, function : signInWithFacebook');
    try {
      final LoginResult loginResult = await _facebookAuth.login();

      // Create a credential from the access token
      final OAuthCredential facebookAuthCredential =
          FacebookAuthProvider.credential(loginResult.accessToken!.token);

      // Once signed in, return the UserCredential
      await _firebaseAuth.signInWithCredential(facebookAuthCredential);
    } catch (e) {
      printError(info: e.toString());
      throw ServerException(e.toString());
    }
  }

  @override
  Future<void> signInWithGoogle() async {
    printInfo(
        info: 'class AuthRemoteDataSourceImpl, function : signInWithGoogle');
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        throw ServerException("Google sign in failed");
      }
      final googleAuthentication = await googleUser.authentication;
      final authCredential = GoogleAuthProvider.credential(
        idToken: googleAuthentication.idToken,
        accessToken: googleAuthentication.accessToken,
      );

      await _firebaseAuth.signInWithCredential(authCredential);
    } catch (e) {
      printError(info: e.toString());
      throw ServerException(e.toString());
    }
  }

  @override
  Future<void> signOut() => Future.wait([
        _googleSignIn.signOut(),
        _firebaseAuth.signOut(),
      ]);
}
