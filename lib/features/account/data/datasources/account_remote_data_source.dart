import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_market/core/firebase/firestore_helper.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/entities/exceptions.dart';
import '../models/user_dtos.dart';

abstract class AccountRemoteDataSource {
  Future<UserDTO> getAccountData();
}

@LazySingleton(as: AccountRemoteDataSource)
class AccountRemoteDataSourceImpl extends AccountRemoteDataSource {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firestore;

  AccountRemoteDataSourceImpl(this._firebaseAuth,
      this._firestore,);

  @override
  Future<UserDTO> getAccountData() async{
    throw UnimplementedError();
    // _firebaseAuth.currentUser!.email;
    // return _firestore.collection('users').doc(_firebaseAuth.currentUser!.uid).get().then((value) {
    //   return UserDTO.fromFirestore(value).copyWith(id: value.id);
    // });
    //
    // final email =  _firebaseAuth.currentUser!.email;
    // final docUser = await _firestore.userDocument();
    // var snapshot = await docUser.get();
    // final data = snapshot.data() as Map<String, dynamic>;
    // return UserDTO(
    //   id: snapshot.id,
    //   email: email!,
    //   fullName: data["name"],
    //   imageURL: data['photoUrl'],
    // );
    //
    // List<ProductMainClassDTO> productClasses = [];
    // try {
    //   QuerySnapshot querySnapshot = await collection.get();
    //   querySnapshot.docs.forEach((doc) {
    //     productClasses
    //         .add(ProductMainClassDTO.fromFirestore(doc).copyWith(id: doc.id));
    //   });
    // } catch (error) {
    //   print(error.toString());
    //   throw ServerException();
    // }
    // return productClasses;
  }
}