import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:fruit_market/core/firebase/firestore_helper.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/entities/exceptions.dart';
import '../models/user_dtos.dart';
import 'package:dartz/dartz.dart';
import 'package:fruit_market/core/entities/exceptions.dart';
import 'package:fruit_market/core/entities/failures.dart';
import '../../../../core/firebase/firestore_helper.dart';

abstract class AccountRemoteDataSource {
  Future<UserDTO?> getAccountData();

  Future<void> deleteAccountData();

  Future<void> updateAccountData(UserDTO user);

  Future<void> addAccountData(UserDTO user);

  Future<void> uploadProfileImageFile(File imageFile);

  Future<String> getProfileImageURL();
}

@LazySingleton(as: AccountRemoteDataSource)
class AccountRemoteDataSourceImpl extends AccountRemoteDataSource {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firestore;
  final FirebaseStorage _storage;

  AccountRemoteDataSourceImpl(
    this._firebaseAuth,
    this._firestore,
    this._storage,
  );

  @override
  Future<UserDTO?> getAccountData() async {
    try {
      final docUser = await _firestore.userDocument();

      var snapshot = await docUser.get();

      if (snapshot.exists) {

        return UserDTO.fromFirestore(snapshot);
      }
      return null;
    } catch (e) {
      debugPrint("error in Future<UserDTO?> getAccountData() : ${e.toString()}");
      throw ServerException();
    }
  }

  @override
  Future<void> addAccountData(UserDTO user) async {
    final docUser = _firestore.collection('users').doc(user.id);
    await docUser
        .set(user.toJson())
        .then((value) => null)
        .catchError((error) => throw ServerException());
  }

  @override
  Future<void> deleteAccountData() async {
    await _firestore
        .collection('users')
        .doc(_firebaseAuth.currentUser!.uid)
        .delete();
  }

  @override
  Future<void> updateAccountData(UserDTO user) async {
    final docUser = _firestore.collection('users').doc(user.id);
    await docUser
        .set(user.toJson())
        .then((value) => null)
        .catchError((error) => throw ServerException());
  }

  @override
  Future<void> uploadProfileImageFile(File imageFile) async {
    await referenceOfProfileImage.putFile(imageFile).catchError((onError) {
      debugPrint("error in Future<void> uploadProfileImageFile : ${onError.toString()}");
      throw ServerException();
    });
  }

  @override
  Future<String> getProfileImageURL() async {
    return await referenceOfProfileImage.getDownloadURL().catchError((onError) {
      debugPrint("error inFuture<String> getProfileImageURL : ${onError.toString()}");
      throw ServerException();
    });
  }

  Reference get referenceOfProfileImage {
    final path = 'users/${_firebaseAuth.currentUser!.uid}/profile_image.jpg';
    return _storage.ref().child(path);
  }

// Future<String> uploadImage(var imageFile) async {
//   Reference ref = _storage.ref().child("/photo.jpg");
//   UploadTask uploadTask = ref.putFile(imageFile);
//
//   var dowurl =
//       await uploadTask.whenComplete(() async => await ref.getDownloadURL());
//   final url = dowurl.toString();
//
//   return url;
// }
}
