import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_market/core/entities/exceptions.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/product_dtos.dart';

abstract class ProductRemoteDataSource {
  Future<List<ProductDTO>> getProducts(
      {String parentId, int? limit, String? lastProduct});

  void updateFavoriteProduct(ProductDTO product);

  Future<List<ProductDTO>> searchProducts(String searchText);
}

@LazySingleton(as: ProductRemoteDataSource)
class ProductRemoteDataSourceImpl extends ProductRemoteDataSource {
  final FirebaseFirestore _firestore;

  ProductRemoteDataSourceImpl(
    this._firestore,
  );

  @override
  Future<List<ProductDTO>> getProducts(
      {String? parentId, int? limit, String? lastProduct}) async {
    Get.printInfo(info: "function getProducts");
    List<ProductDTO> products = [];
    late final Query<Map<String, dynamic>> query;
    if (lastProduct == null) {
      query = _firestore
          .collection('products')
          .orderBy(FieldPath.documentId)
          .where("parent_id", isEqualTo: parentId!)
          .limit(limit!);
    } else {
      query = _firestore
          .collection("products")
          .orderBy(FieldPath.documentId)
          .where(FieldPath.documentId, isGreaterThan: lastProduct)
          .where("parent_id", isEqualTo: parentId)
          .limit(limit!);
    }

    try {
      QuerySnapshot querySnapshot = await query.get();
      for (var doc in querySnapshot.docs) {
        products.add(ProductDTO.fromFirestore(doc));
      }
    } catch (error) {
      Get.printError(info: "function : getProducts, ${error.toString()}");
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
      Get.printError(info: "function : getProducts, ${error.toString()}");
      throw ServerException();
    }
  }

  @override
  Future<List<ProductDTO>> searchProducts(String searchText) async {
    Get.printInfo(info: "function searchProducts");
    print("ProductRemoteDataSource : function call ${searchText}");

    try {
      final QuerySnapshot querySnapshot = await _firestore
          .collection('products')
          .where("name", isGreaterThanOrEqualTo: searchText)
          .where("name", isLessThanOrEqualTo: "$searchText\uf7ff")
          .get();
      print("fffffff");
      print(querySnapshot.docs.isEmpty);
      return querySnapshot.docs
          .map((doc) => ProductDTO.fromFirestore(doc))
          .toList();
    } catch (error) {
      print("error in searchProducts : ${error.toString()}");
      Get.printError(info: "function : searchProducts, ${error.toString()}");
      throw ServerException();
    }
  }
}
