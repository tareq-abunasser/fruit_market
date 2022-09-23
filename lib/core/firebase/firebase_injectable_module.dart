import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';

@module
abstract class FirebaseInjectableModule {

  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  FirebaseFirestore get firestore => FirebaseFirestore.instance;

  FirebaseStorage get storage => FirebaseStorage.instance;

  FirebaseMessaging get messaging => FirebaseMessaging.instance;

}
