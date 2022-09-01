import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_market/core/entities/exceptions.dart';
import 'package:fruit_market/core/entities/failures.dart';
import 'package:fruit_market/features/home/data/models/product_main_class_dtos.dart';
import 'package:fruit_market/features/home/data/models/product_subclass_dtos.dart';

import 'package:injectable/injectable.dart';

import '../../../../core/firebase/firebase_user_mapper.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../../../core/firebase/firestore_helper.dart';
import '../models/category_dtos.dart';

abstract class HomeRemoteDataSource {
  Future<List<CategoryDTO>> getCategories();

}

@LazySingleton(as: HomeRemoteDataSource)
class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final FirebaseFirestore _firestore;

  HomeRemoteDataSourceImpl(
    this._firestore,
  );

  @override
  Future<List<CategoryDTO>> getCategories() async {
    final collection = _firestore.collection('product_main_classes');
    List<CategoryDTO> productClasses = [];
    try {
      QuerySnapshot querySnapshot = await collection.get();
      querySnapshot.docs.forEach((doc) {
        productClasses
            .add(CategoryDTO.fromFirestore(doc).copyWith(id: doc.id));
      });
    } catch (error) {
      print(error.toString());
      throw ServerException();
    }
    return productClasses;
  }

}
