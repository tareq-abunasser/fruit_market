import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_market/core/entities/exceptions.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/subcategory_dtos.dart';

abstract class SubcategoryRemoteDataSource {
  Future<List<SubcategoryDTO>> getSubcategories(
      {String parentId, int? limit, String? lastSubcategoryId});
}

@LazySingleton(as: SubcategoryRemoteDataSource)
class SubcategoryRemoteDataSourceImpl extends SubcategoryRemoteDataSource {
  final FirebaseFirestore _firestore;

  SubcategoryRemoteDataSourceImpl(
    this._firestore,
  );

  @override
  Future<List<SubcategoryDTO>> getSubcategories(
      {String? parentId, int? limit, String? lastSubcategoryId}) async {
    Get.printInfo(info: 'function : getSubcategories');
    List<SubcategoryDTO> subcategory = [];
    late final documents;
    if (lastSubcategoryId == null) {
      documents = _firestore
          .collection('product_subclasses')
          .orderBy(FieldPath.documentId)
          .where("parent_id", isEqualTo: parentId!)
          .limit(limit!);
    } else {
      documents = _firestore
          .collection("product_subclasses")
          .orderBy(FieldPath.documentId)
          .where(FieldPath.documentId, isGreaterThan: lastSubcategoryId)
          .where("parent_id", isEqualTo: parentId)
          .limit(limit!);
    }
    try {
      QuerySnapshot querySnapshot = await documents.get();
      for (var doc in querySnapshot.docs) {
        subcategory.add(SubcategoryDTO.fromFirestore(doc).copyWith(id: doc.id));
      }
    } catch (error) {
      Get.printError(info: error.toString());
      throw ServerException(error.toString());
    }
    return subcategory;
  }
}
