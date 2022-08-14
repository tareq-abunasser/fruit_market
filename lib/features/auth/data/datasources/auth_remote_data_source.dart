import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:fruit_market/core/entities/exceptions.dart';
import 'package:fruit_market/core/entities/failures.dart';
import 'package:fruit_market/features/auth/data/models/user_dtos.dart';
import 'package:fruit_market/features/auth/domain/entities/user.dart' as _user;
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/firebase/firebase_user_mapper.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../../../core/firebase/firestore_helper.dart';

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
  final FirebaseFirestore _firestore;

  AuthRemoteDataSourceImpl(
    this._firebaseAuth,
    this._googleSignIn,
    this._facebookAuth,
    this._firestore,
  );

  @override
  UserDTO getSignedInUser() {
    UserDTO? userDTO = _firebaseAuth.currentUser?.toDomain();
    if (userDTO == null) {
      throw UnAuthenticatedException();
    }
    return userDTO;
  }

  @override
  Future<void> signInWithFacebook() async {
    // Trigger the sign-in flow
    final LoginResult loginResult = await _facebookAuth.login();

    if (loginResult == null) {
      throw ServerException();
    }
    // Create a credential from the access token
    final OAuthCredential facebookAuthCredential =
        FacebookAuthProvider.credential(loginResult.accessToken!.token);

    // Once signed in, return the UserCredential
    await _firebaseAuth.signInWithCredential(facebookAuthCredential);
  }

  @override
  Future<void> signInWithGoogle() async {
    final googleUser = await _googleSignIn.signIn();
    if (googleUser == null) {
      throw ServerException();
    }
    final googleAuthentication = await googleUser.authentication;
    final authCredential = GoogleAuthProvider.credential(
      idToken: googleAuthentication.idToken,
      accessToken: googleAuthentication.accessToken,
    );

    await _firebaseAuth.signInWithCredential(authCredential);
  }

  @override
  Future<void> signOut() => Future.wait([
        _googleSignIn.signOut(),
        _firebaseAuth.signOut(),
      ]);


}
