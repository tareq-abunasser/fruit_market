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

  Future<List<ProductDTO>> getFavoriteProducts();

  Future<List<ProductDTO>> getCart();

  void addProductToCart(
      ProductDTO product, ProductMainClassDTO productMainClass);
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
        // update document if exist if not create
        _firestore
            .collection('favourite_products')
            .doc(FirebaseAuth.instance.currentUser!.uid)
            .set({
              "likes": FieldValue.arrayUnion([product.id])
            }, SetOptions(merge: true))
            .then((value) => null)
            .catchError((error) => print(error.toString()));
      } else {
        _firestore.collection('products').doc(product.id).update({
          'likes':
              FieldValue.arrayRemove([FirebaseAuth.instance.currentUser!.uid])
        });
        // update document if exist if not create
        _firestore
            .collection('favourite_products')
            .doc(FirebaseAuth.instance.currentUser!.uid)
            .set({
          "likes": FieldValue.arrayRemove([product.id])
        }, SetOptions(merge: true));
      }
    } catch (error) {
      print(error.toString());
      throw ServerException();
    }
  }

  @override
  Future<List<ProductDTO>> getFavoriteProducts() async {
    try {
      late List<ProductDTO> products = [];
      print("ggggggg01");

      final favoriteProductsId = await _firestore
          .collection('favourite_products')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .get();
      print("ggggggg11");
      for (var productId in favoriteProductsId.data()?['likes']) {
        print("ggggggg21");

        final product =
            await _firestore.collection('products').doc(productId).get();
        print("ggggggg31");

        products
            .add(ProductDTO.fromFirestore(product).copyWith(id: product.id));
        print("ggggggg41");

      }
      return products;
    } catch (error) {
      print(error.toString());
      throw ServerException();
    }
  }

  @override
  Future<List<ProductDTO>> getCart() async {
    try {
      late List<ProductDTO> products = [];
      final favoriteProductsId = await _firestore
          .collection('shopping_carts')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .get();
      for (var mainClass in favoriteProductsId.data()!.keys) {
        for (var productId in favoriteProductsId.data()![mainClass]) {
          final product =
              await _firestore.collection('products').doc(productId).get();
          products
              .add(ProductDTO.fromFirestore(product).copyWith(id: product.id));
        }
      }
      return products;
    } catch (error) {
      print(error.toString());
      throw ServerException();
    }
  }

  @override
  void addProductToCart(
      ProductDTO product, ProductMainClassDTO productMainClass) {
    try {
      // update document if exist if not create
      _firestore
          .collection('shopping_carts')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .set({
        productMainClass.name: FieldValue.arrayUnion([product.id])
      }, SetOptions(merge: true));
    } catch (error) {
      print(error.toString());
      throw ServerException();
    }
  }
}
