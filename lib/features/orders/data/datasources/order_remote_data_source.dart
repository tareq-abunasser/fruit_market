import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/entities/exceptions.dart';
import '../models/order_item_dtos.dart';

abstract class OrderRemoteDataSource {
  Future<List<OrderItemDTO>> getOrders();

  Future<void> addToOrders(List<OrderItemDTO> items);

  Future<void> removeFromOrders(OrderItemDTO items);
  Future<void> updateOrderItem(OrderItemDTO item);
  Future<void> clearOrders();
}

@LazySingleton(as: OrderRemoteDataSource)
class OrderRemoteDataSourceImpl extends OrderRemoteDataSource {
  final FirebaseFirestore _firestore;
  late var ordersEndPoint;

  OrderRemoteDataSourceImpl(
    this._firestore,
  ) {
    ordersEndPoint = _firestore
        .collection('users_utils')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('orders');
  }

  @override
  Future<void> addToOrders(List<OrderItemDTO> items) async {
    try {
      await ordersEndPoint.add(items.map((e) => {e.id: e.toJson()}));
          // .doc(orderItem.id)
          // .set(orderItem.toJson());
    } on FirebaseException catch (e) {
      print(e.toString());
      throw ServerException();
    }
  }

  @override
  Future<void> updateOrderItem(OrderItemDTO orderItem) async {
    try {
      await _firestore
          .collection('users_utils')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .collection('order')
          .doc(orderItem.id)
          .set(orderItem.toJson());
    } on FirebaseException catch (e) {
      print(e.toString());
      throw ServerException();
    }
  }

  // @override
// void addProductToOrders(
//     ProductDTO product, ProductMainClassDTO productMainClass) {
//   try {
//     // update document if exist if not create
//     _firestore
//         .collection('shopping_orders')
//         .doc(FirebaseAuth.instance.currentUser!.uid)
//         .set({
//       productMainClass.name: FieldValue.arrayUnion([product.id])
//     }, SetOptions(merge: true));
//   } catch (error) {
//     print(error.toString());
//     throw ServerException();
//   }
// }

  @override
  Future<void> clearOrders() async {
    final collection = await _firestore
        .collection('users_utils')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('order')
        .get();
    final batch = _firestore.batch();
    for (final doc in collection.docs) {
      batch.delete(doc.reference);
    }
    return batch.commit();

    // await _firestore
    //     .collection('shopping_orders')
    //     .doc(FirebaseAuth.instance.currentUser!.uid)
    //     .delete();
  }

  @override
  Future<void> removeFromOrders(OrderItemDTO orderItem) async {
    await _firestore
        .collection('users_utils')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('order')
        .doc(orderItem.id)
        .delete();

    // final docRef = _firestore
    //     .collection("shopping_orders")
    //     .doc(FirebaseAuth.instance.currentUser!.uid);
    // final updates = <String, dynamic>{
    //   product.id!: FieldValue.delete(),
    // };
    //
    // docRef.update(updates);
  }

  @override
  Future<List<OrderItemDTO>> getOrders() async {
    List<OrderItemDTO> orderItems = [];
    try {
      final collection = await _firestore
          .collection('users_utils')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .collection('order')
          .get();
      for (final doc in collection.docs) {
        orderItems.add(OrderItemDTO.fromJson(doc.data()).copyWith(id: doc.id));
      }

      // DocumentSnapshot docSnap = await _firestore
      //     .collection('shopping_orders')
      //     .doc(FirebaseAuth.instance.currentUser!.uid)
      //     .get();
      // if (docSnap.exists) {
      //   print("docsnap : ");
      //   print(docSnap.data());
      //   // for(var orderData in docSnap.data() as Map<String, dynamic>) {
      //   //   orderItems.add(OrderItemDTO.fromJson(orderData).copyWith(id: doc.id));
      //   // }
      // }

    } catch (error) {
      print(error.toString());
      throw ServerException();
    }
    return orderItems;
  }

// @override
// Future<List<OrderItemDTO>> getOrders() async {
//   List<OrderItemDTO> products = [];
//   try {
//     DocumentSnapshot docSnap = await _firestore
//         .collection('shopping_orders')
//         .doc(FirebaseAuth.instance.currentUser!.uid)
//         .get();
//     var data_shopping_order = docSnap.data() as Map<String, dynamic>;
//
//     for (var key in data_shopping_order.keys) {
//       Map<String, dynamic> product = await getProduct(key);
//       Map<String, dynamic> productSubClass =
//       await getProductSubclass(product["parent_id"]);
//       Map<String, dynamic> productSubMainClass =
//       await getProductSubclass(product["parent_id"]);
//     }
//   } catch (error) {
//     print(error.toString());
//     throw ServerException();
//   }
//   return products;
// }
//
// Future<Map<String, dynamic>> getProduct(String productId) async {
//   try {
//     final product =
//         await _firestore.collection('products').doc(productId).get();
//     return product.data() as Map<String, dynamic>;
//   } catch (error) {
//     print(error.toString());
//     throw ServerException();
//   }
// }
//
// Future<Map<String, dynamic>> getProductSubclass(
//     String productSubclassId) async {
//   try {
//     final productSubclass = await _firestore
//         .collection('product_subclasses')
//         .doc(productSubclassId)
//         .get();
//     return productSubclass.data() as Map<String, dynamic>;
//   } catch (error) {
//     print(error.toString());
//     throw ServerException();
//   }
// }

// Future<Map<String, dynamic>> getProductMainClass(
//     String productMainClassId) async {
//   try {
//     final productMainClass = await _firestore
//         .collection('product_main_classes')
//         .doc(productMainClassId)
//         .get();
//     return productMainClass.data() as Map<String, dynamic>;
//   } catch (error) {
//     print(error.toString());
//     throw ServerException();
//   }
// }

// @override
// Future<List<ProductMainClassDTO>> getProductMainClasses() async {
//   final collection = _firestore.collection('product_main_classes');
//   List<ProductMainClassDTO> productClasses = [];
//   try {
//     QuerySnapshot querySnapshot = await collection.get();
//     querySnapshot.docs.forEach((doc) {
//       productClasses
//           .add(ProductMainClassDTO.fromFirestore(doc).copyWith(id: doc.id));
//     });
//   } catch (error) {
//     print(error.toString());
//     throw ServerException();
//   }
//   return productClasses;
// }
//
// @override
// Future<List<ProductSubclassDTO>> getProductSubclasses(
//     {String? parentId, int? limit, String? lastProductSubClassId}) async {
//   List<ProductSubclassDTO> productsSubclass = [];
//   late final documents;
//   if (lastProductSubClassId == null) {
//     documents = _firestore
//         .collection('product_subclasses')
//         .orderBy(FieldPath.documentId)
//         .where("parent_id", isEqualTo: parentId!)
//         .limit(limit!);
//   } else {
//     documents = _firestore
//         .collection("product_subclasses")
//         .orderBy(FieldPath.documentId)
//         .where(FieldPath.documentId, isGreaterThan: lastProductSubClassId)
//         .where("parent_id", isEqualTo: parentId)
//         .limit(limit!);
//   }
//   try {
//     QuerySnapshot querySnapshot = await documents.get();
//     querySnapshot.docs.forEach((doc) {
//       productsSubclass
//           .add(ProductSubclassDTO.fromFirestore(doc).copyWith(id: doc.id));
//     });
//   } catch (error) {
//     print(error.toString());
//     throw ServerException();
//   }
//   return productsSubclass;
// }
//
// @override
// Future<List<ProductDTO>> getProducts(
//     {String? parentId, int? limit, String? lastProduct}) async {
//   List<ProductDTO> products = [];
//
//   late final documents;
//   if (lastProduct == null) {
//     documents = _firestore
//         .collection('products')
//         .orderBy(FieldPath.documentId)
//         .where("parent_id", isEqualTo: parentId!)
//         .limit(limit!);
//   } else {
//     documents = _firestore
//         .collection("products")
//         .orderBy(FieldPath.documentId)
//         .where(FieldPath.documentId, isGreaterThan: lastProduct)
//         .where("parent_id", isEqualTo: parentId)
//         .limit(limit!);
//   }
//
//   try {
//     QuerySnapshot querySnapshot = await documents.get();
//     querySnapshot.docs.forEach((doc) {
//       products.add(ProductDTO.fromFirestore(doc).copyWith(id: doc.id));
//     });
//   } catch (error) {
//     print(error.toString());
//     throw ServerException();
//   }
//   return products;
// }
//
// @override
// void updateFavoriteProduct(ProductDTO product) {
//   try {
//     if (product.likes.contains(FirebaseAuth.instance.currentUser!.uid)) {
//       _firestore.collection('products').doc(product.id).update({
//         'likes':
//         FieldValue.arrayUnion([FirebaseAuth.instance.currentUser!.uid])
//       });
//       // update document if exist if not create
//       _firestore
//           .collection('favourite_products')
//           .doc(FirebaseAuth.instance.currentUser!.uid)
//           .set({
//         "likes": FieldValue.arrayUnion([product.id])
//       }, SetOptions(merge: true))
//           .then((value) => null)
//           .catchError((error) => print(error.toString()));
//     } else {
//       _firestore.collection('products').doc(product.id).update({
//         'likes':
//         FieldValue.arrayRemove([FirebaseAuth.instance.currentUser!.uid])
//       });
//       // update document if exist if not create
//       _firestore
//           .collection('favourite_products')
//           .doc(FirebaseAuth.instance.currentUser!.uid)
//           .set({
//         "likes": FieldValue.arrayRemove([product.id])
//       }, SetOptions(merge: true));
//     }
//   } catch (error) {
//     print(error.toString());
//     throw ServerException();
//   }
// }
//
// @override
// Future<List<ProductDTO>> getFavoriteProducts() async {
//   try {
//     late List<ProductDTO> products = [];
//     final favoriteProductsId = await _firestore
//         .collection('favourite_products')
//         .doc(FirebaseAuth.instance.currentUser!.uid)
//         .get();
//     for (var productId in favoriteProductsId.data()?['likes']) {
//       final product =
//       await _firestore.collection('products').doc(productId).get();
//       products
//           .add(ProductDTO.fromFirestore(product).copyWith(id: product.id));
//     }
//     return products;
//   } catch (error) {
//     print(error.toString());
//     throw ServerException();
//   }
// }
//
// @override
// Future<List<ProductDTO>> getOrders() async {
//   try {
//     late List<ProductDTO> products = [];
//     final favoriteProductsId = await _firestore
//         .collection('shopping_orders')
//         .doc(FirebaseAuth.instance.currentUser!.uid)
//         .get();
//     for (var mainClass in favoriteProductsId.data()!.keys) {
//       for (var productId in favoriteProductsId.data()![mainClass]) {
//         final product =
//         await _firestore.collection('products').doc(productId).get();
//         products
//             .add(ProductDTO.fromFirestore(product).copyWith(id: product.id));
//       }
//     }
//     return products;
//   } catch (error) {
//     print(error.toString());
//     throw ServerException();
//   }
// }
//
// @override
// void addProductToOrders(
//     ProductDTO product, ProductMainClassDTO productMainClass) {
//   try {
//     // update document if exist if not create
//     _firestore
//         .collection('shopping_orders')
//         .doc(FirebaseAuth.instance.currentUser!.uid)
//         .set({
//       productMainClass.name: FieldValue.arrayUnion([product.id])
//     }, SetOptions(merge: true));
//   } catch (error) {
//     print(error.toString());
//     throw ServerException();
//   }
// }
}
