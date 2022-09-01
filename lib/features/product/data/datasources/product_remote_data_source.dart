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
import '../../domain/entities/product.dart';
import '../../domain/entities/product_main_class.dart';
import '../../domain/entities/product_subclass.dart';
import '../../domain/faliures/home_failure.dart';
import '../models/product_dtos.dart';

abstract class HomeRemoteDataSource {
  Future<List<ProductMainClassDTO>> getProductMainClasses();

  Future<List<ProductSubclassDTO>> getProductSubclasses(
      {String parentId, int? limit, String? lastProductSubClassId});

  Future<List<ProductDTO>> getProducts(
      {String parentId, int? limit, String? lastProduct});

  void updateFavoriteProduct(ProductDTO product);

}

@LazySingleton(as: HomeRemoteDataSource)
class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final FirebaseFirestore _firestore;

  HomeRemoteDataSourceImpl(
    this._firestore,
  );

  @override
  Future<List<ProductMainClassDTO>> getProductMainClasses() async {
    final collection = _firestore.collection('product_main_classes');
    List<ProductMainClassDTO> productClasses = [];
    try {
      QuerySnapshot querySnapshot = await collection.get();
      querySnapshot.docs.forEach((doc) {
        productClasses
            .add(ProductMainClassDTO.fromFirestore(doc).copyWith(id: doc.id));
      });
    } catch (error) {
      print(error.toString());
      throw ServerException();
    }
    return productClasses;
  }

  @override
  Future<List<ProductSubclassDTO>> getProductSubclasses(
      {String? parentId, int? limit, String? lastProductSubClassId}) async {
    List<ProductSubclassDTO> productsSubclass = [];
    late final documents;
    if (lastProductSubClassId == null) {
      documents = _firestore
          .collection('product_subclasses')
          .orderBy(FieldPath.documentId)
          .where("parent_id", isEqualTo: parentId!)
          .limit(limit!);
    } else {
      documents = _firestore
          .collection("product_subclasses")
          .orderBy(FieldPath.documentId)
          .where(FieldPath.documentId, isGreaterThan: lastProductSubClassId)
          .where("parent_id", isEqualTo: parentId)
          .limit(limit!);
    }
    try {
      QuerySnapshot querySnapshot = await documents.get();
      querySnapshot.docs.forEach((doc) {
        productsSubclass
            .add(ProductSubclassDTO.fromFirestore(doc).copyWith(id: doc.id));
      });
    } catch (error) {
      print(error.toString());
      throw ServerException();
    }
    return productsSubclass;
  }

  @override
  Future<List<ProductDTO>> getProducts(
      {String? parentId, int? limit, String? lastProduct}) async {
    List<ProductDTO> products = [];

    late final documents;
    if (lastProduct == null) {
      documents = _firestore
          .collection('products')
          .orderBy(FieldPath.documentId)
          .where("parent_id", isEqualTo: parentId!)
          .limit(limit!);
    } else {
      documents = _firestore
          .collection("products")
          .orderBy(FieldPath.documentId)
          .where(FieldPath.documentId, isGreaterThan: lastProduct)
          .where("parent_id", isEqualTo: parentId)
          .limit(limit!);
    }

    try {
      QuerySnapshot querySnapshot = await documents.get();
      querySnapshot.docs.forEach((doc) {
        products.add(ProductDTO.fromFirestore(doc).copyWith(id: doc.id));
      });
    } catch (error) {
      print(error.toString());
      throw ServerException();
    }
    return products;
  }

  @override
  void updateFavoriteProduct(ProductDTO product) {
    try {
      if (product.likes.contains(FirebaseAuth.instance.currentUser!.uid)) {
        _firestore.collection('products').doc(product.id).update({
          'likes':
              FieldValue.arrayUnion([FirebaseAuth.instance.currentUser!.uid])
        });
      } else {
        _firestore.collection('products').doc(product.id).update({
          'likes':
              FieldValue.arrayRemove([FirebaseAuth.instance.currentUser!.uid])
        });
      }
    } catch (error) {
      print(error.toString());
      throw ServerException();
    }
  }
}
