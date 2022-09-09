import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:fruit_market/core/firebase/firestore_helper.dart';
import 'package:get/get.dart';
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

  Future<void> uploadProfileImageAsFile(File imageFile);

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
    printInfo(
        info: 'class AccountRemoteDataSourceImpl, function getAccountData');
    try {
      final docUser = _firestore.userAccountDocument();

      var snapshot = await docUser.get();

      if (snapshot.exists) {
        return UserDTO.fromFirestore(snapshot);
      }
      return null;
    } catch (e) {
      printError(info: e.toString());
      throw ServerException(e.toString());
    }
  }

  @override
  Future<void> addAccountData(UserDTO user) async {
    printInfo(
        info: 'class AccountRemoteDataSourceImpl, function addAccountData');
    await _firestore
        .userAccountDocument()
        .set(user.toJson())
        .then((value) => null)
        .catchError((e) {
      printError(info: e.toString());
      throw ServerException(e.toString());
    });
  }

  @override
  Future<void> deleteAccountData() async {
    printInfo(
        info: 'class AccountRemoteDataSourceImpl, function deleteAccountData');
    _firestore.userAccountDocument().delete();
  }

  @override
  Future<void> updateAccountData(UserDTO user) async {
    printInfo(
        info: 'class AccountRemoteDataSourceImpl, function updateAccountData');
    await _firestore.userAccountDocument()
        .set(user.toJson())
        .then((value) => null)
        .catchError((error) => throw ServerException());
  }

  @override
  Future<void> uploadProfileImageAsFile(File imageFile) async {
    printInfo(
        info:
            'class AccountRemoteDataSourceImpl, function uploadProfileImageAsFile');
    await referenceOfProfileImage.putFile(imageFile).catchError((e) {
      printError(info: e.toString());
      throw ServerException(e.toString());
    });
  }

  @override
  Future<String> getProfileImageURL() async {
    printInfo(
        info: 'class AccountRemoteDataSourceImpl, function getProfileImageURL');
    return await referenceOfProfileImage.getDownloadURL().catchError((e) {
      printError(info: e.toString());
      throw ServerException(e.toString());
    });
  }

  Reference get referenceOfProfileImage {
    final path = 'users/${_firebaseAuth.currentUser!.uid}/profile_image.jpg';
    return _storage.ref().child(path);
  }
}
