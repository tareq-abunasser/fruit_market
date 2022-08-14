import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_market/core/entities/exceptions.dart';
import 'package:fruit_market/core/entities/failures.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/firebase/firebase_user_mapper.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../../../core/firebase/firestore_helper.dart';
import '../../domain/entities/favourite_item.dart';
import '../models/favourite_item_dtos.dart';

abstract class FavouriteRemoteDataSource {
  Future<void> addFavouriteItem(FavouriteItemDTO favouriteItemDTO);

  Future<List<FavouriteItemDTO>> getFavouriteItems();

  Future<void> deleteFavoriteItem(FavouriteItemDTO favouriteItemDTO);

  Future<void> deleteAllFavoriteItem();
}

@LazySingleton(as: FavouriteRemoteDataSource)
class FavouriteRemoteDataSourceImpl extends FavouriteRemoteDataSource {
  final FirebaseFirestore _firestore;

  FavouriteRemoteDataSourceImpl(
    this._firestore,
  );


  // @override
  // Future<void> addFavouriteItem(FavouriteItemDTO favouriteItemDTO) async {
  //   try {
  //     if (product.likes.contains(FirebaseAuth.instance.currentUser!.uid)) {
  //       _firestore.collection('products').doc(product.id).update({
  //         'likes':
  //             FieldValue.arrayUnion([FirebaseAuth.instance.currentUser!.uid])
  //       });
  //       // update document if exist if not create
  //       _firestore
  //           .collection('favourite_products')
  //           .doc(FirebaseAuth.instance.currentUser!.uid)
  //           .set({
  //             "likes": FieldValue.arrayUnion([product.id])
  //           }, SetOptions(merge: true))
  //           .then((value) => null)
  //           .catchError((error) => print(error.toString()));
  //     } else {
  //       _firestore.collection('products').doc(product.id).update({
  //         'likes':
  //             FieldValue.arrayRemove([FirebaseAuth.instance.currentUser!.uid])
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
  //           await _firestore.collection('products').doc(productId).get();
  //       products
  //           .add(ProductDTO.fromFirestore(product).copyWith(id: product.id));
  //     }
  //     return products;
  //   } catch (error) {
  //     print(error.toString());
  //     throw ServerException();
  //   }
  // }

  @override
  Future<void> addFavouriteItem(FavouriteItemDTO favouriteItemDTO) {
    // TODO: implement addFavouriteItem
    throw UnimplementedError();
  }

  @override
  Future<void> deleteAllFavoriteItem() {
    // TODO: implement deleteAllFavoriteItem
    throw UnimplementedError();
  }

  @override
  Future<void> deleteFavoriteItem(FavouriteItemDTO favouriteItemDTO) {
    // TODO: implement deleteFavoriteItem
    throw UnimplementedError();
  }

  @override
  Future<List<FavouriteItemDTO>> getFavouriteItems() {
    // TODO: implement getFavouriteItems
    throw UnimplementedError();
  }
}
