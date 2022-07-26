import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class FirebaseInjectableModule {
  // @lazySingleton
  GoogleSignIn get googleSignIn => GoogleSignIn();

  // @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  // @lazySingleton
  FirebaseFirestore get firestore => FirebaseFirestore.instance;

  // @lazySingleton
  FacebookAuth get facebookAuth => FacebookAuth.instance;

  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  // @lazySingleton
  // SharedPreferences get sharedPreferences {
  //   late SharedPreferences sharedPreferences;
  //
  //   SharedPreferences.getInstance().then((value) => sharedPreferences = value);
  //   return sharedPreferences;
  // }

  InternetConnectionChecker get connectionChecker => InternetConnectionChecker();
}
