import 'package:fruit_market/core/entities/exceptions.dart';
import 'package:get/get.dart';

import 'package:injectable/injectable.dart';

import '../../../../core/firebase/firebase_user_mapper.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../../../core/firebase/firestore_helper.dart';
import '../models/category_dtos.dart';

abstract class CategoryRemoteDataSource {
  Future<List<CategoryDTO>> getCategories();
}

@LazySingleton(as: CategoryRemoteDataSource)
class CategoryRemoteDataSourceImpl extends CategoryRemoteDataSource {
  final FirebaseFirestore _firestore;

  CategoryRemoteDataSourceImpl(
    this._firestore,
  );

  @override
  Future<List<CategoryDTO>> getCategories() async {
    Get.printInfo(info: 'function : getCategories');
    final collection = _firestore.collection('product_main_classes');
    List<CategoryDTO> productClasses = [];
    try {
      QuerySnapshot querySnapshot = await collection.get();
      for (var doc in querySnapshot.docs) {
        productClasses.add(CategoryDTO.fromFirestore(doc).copyWith(id: doc.id));
      }
    } catch (error) {
      Get.printError(info: error.toString());
      throw ServerException();
    }
    return productClasses;
  }
}
