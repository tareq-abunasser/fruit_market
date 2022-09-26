import 'package:fruit_market/core/entities/exceptions.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../../../core/firebase/firestore_helper.dart';
import '../models/favourite_item_dtos.dart';

abstract class FavouriteRemoteDataSource {
  Future<void> addFavouriteItem(FavouriteItemDTO favouriteItemDTO);

  Future<List<FavouriteItemDTO>> getFavouriteItems();

  Future<void> deleteFavoriteItem(FavouriteItemDTO favouriteItemDTO);

  Future<void> clearFavourites();
}

@LazySingleton(as: FavouriteRemoteDataSource)
class FavouriteRemoteDataSourceImpl extends FavouriteRemoteDataSource {
  final FirebaseFirestore _firestore;

  FavouriteRemoteDataSourceImpl(
    this._firestore,
  );

  @override
  Future<void> addFavouriteItem(FavouriteItemDTO favouriteItemDTO) async {
    printInfo(info: "function addFavouriteItem");
    print(favouriteItemDTO.id);
    print(favouriteItemDTO.toJson());
    try {
      await _firestore
          .userFavourites()
          .doc(favouriteItemDTO.id)
          .set(favouriteItemDTO.toJson());
    } on FirebaseException catch (e) {
      printError(info: e.toString());
      throw ServerException(e.toString());
    }
  }

  @override
  Future<void> clearFavourites() async {
    printInfo(info: "function clearFavourites");
    try {
      final collection = await _firestore.userFavourites().get();
      final batch = _firestore.batch();
      for (final doc in collection.docs) {
        batch.delete(doc.reference);
      }
      await batch.commit();
    } on FirebaseException catch (e) {
      printError(info: e.toString());
      throw ServerException(e.toString());
    }
  }

  @override
  Future<void> deleteFavoriteItem(FavouriteItemDTO favouriteItemDTO) async {
    printInfo(info: "function deleteFavoriteItem");
    try {
      await _firestore.userFavourites().doc(favouriteItemDTO.id).delete();
    } on FirebaseException catch (e) {
      printError(info: e.toString());
      throw ServerException(e.toString());
    }
  }

  @override
  Future<List<FavouriteItemDTO>> getFavouriteItems() async {
    printInfo(info: "function getFavouriteItems");
    try {
      final collection = await _firestore.userFavourites().get();
      return collection.docs
          .map((doc) => FavouriteItemDTO.fromFirestore(doc))
          .toList();
    } on FirebaseException catch (e) {
      printError(info: e.toString());
      throw ServerException(e.toString());
    }
  }
}
