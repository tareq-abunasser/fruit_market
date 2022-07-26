import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/entities/exceptions.dart';
import '../models/cart_item_dtos.dart';

abstract class CartRemoteDataSource {
  Future<List<CartItemDTO>> getCart();

  void addToCart(CartItemDTO cartItem);

  void removeFromCart(CartItemDTO cartItem);

  void clearCart();
}

@LazySingleton(as: CartRemoteDataSource)
class CartRemoteDataSourceImpl extends CartRemoteDataSource {
  final FirebaseFirestore _firestore;
  late var cartEndPoint;

  CartRemoteDataSourceImpl(
    this._firestore,
  ) {
    cartEndPoint = _firestore
        .collection('users_utils')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('cart');
  }

  @override
  Future<void> addToCart(CartItemDTO cartItem) async {
    try {
      await _firestore
          .collection('users_utils')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .collection('cart')
          .doc(cartItem.id)
          .set(cartItem.toJson());
    } on FirebaseException catch (e) {
      print(e.toString());
      throw ServerException();
    }
  }

  // @override
// void addProductToCart(
//     ProductDTO product, ProductMainClassDTO productMainClass) {
//   try {
//     // update document if exist if not create
//     _firestore
//         .collection('shopping_carts')
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
  Future<void> clearCart() async {
    final collection = await _firestore
        .collection('users_utils')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('cart')
        .get();
    final batch = _firestore.batch();
    for (final doc in collection.docs) {
      batch.delete(doc.reference);
    }
    return batch.commit();

    // await _firestore
    //     .collection('shopping_carts')
    //     .doc(FirebaseAuth.instance.currentUser!.uid)
    //     .delete();
  }

  @override
  Future<void> removeFromCart(CartItemDTO cartItem) async {
    await _firestore
        .collection('users_utils')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('cart')
        .doc(cartItem.id)
        .delete();

    // final docRef = _firestore
    //     .collection("shopping_carts")
    //     .doc(FirebaseAuth.instance.currentUser!.uid);
    // final updates = <String, dynamic>{
    //   product.id!: FieldValue.delete(),
    // };
    //
    // docRef.update(updates);
  }

  @override
  Future<List<CartItemDTO>> getCart() async {
    List<CartItemDTO> cartItems = [];
    try {
      final collection = await _firestore
          .collection('users_utils')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .collection('cart')
          .get();
      for (final doc in collection.docs) {
        cartItems.add(CartItemDTO.fromJson(doc.data()).copyWith(id: doc.id));
      }

      // DocumentSnapshot docSnap = await _firestore
      //     .collection('shopping_carts')
      //     .doc(FirebaseAuth.instance.currentUser!.uid)
      //     .get();
      // if (docSnap.exists) {
      //   print("docsnap : ");
      //   print(docSnap.data());
      //   // for(var cartData in docSnap.data() as Map<String, dynamic>) {
      //   //   cartItems.add(CartItemDTO.fromJson(cartData).copyWith(id: doc.id));
      //   // }
      // }

    } catch (error) {
      print(error.toString());
      throw ServerException();
    }
    return cartItems;
  }

// @override
// Future<List<CartItemDTO>> getCart() async {
//   List<CartItemDTO> products = [];
//   try {
//     DocumentSnapshot docSnap = await _firestore
//         .collection('shopping_carts')
//         .doc(FirebaseAuth.instance.currentUser!.uid)
//         .get();
//     var data_shopping_cart = docSnap.data() as Map<String, dynamic>;
//
//     for (var key in data_shopping_cart.keys) {
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
// Future<List<ProductDTO>> getCart() async {
//   try {
//     late List<ProductDTO> products = [];
//     final favoriteProductsId = await _firestore
//         .collection('shopping_carts')
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
// void addProductToCart(
//     ProductDTO product, ProductMainClassDTO productMainClass) {
//   try {
//     // update document if exist if not create
//     _firestore
//         .collection('shopping_carts')
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
