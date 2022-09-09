import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_market/core/firebase/firestore_helper.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/entities/exceptions.dart';
import '../models/order_item_dtos.dart';

abstract class OrderRemoteDataSource {
  Future<List<OrderItemDTO>> getOrders();

  Future<void> addToOrders(List<OrderItemDTO> items);

  Future<void> removeFromOrders(OrderItemDTO item);

  Future<void> updateOrderItem(OrderItemDTO item);

  Future<void> clearOrders();
}

@LazySingleton(as: OrderRemoteDataSource)
class OrderRemoteDataSourceImpl extends OrderRemoteDataSource {
  final FirebaseFirestore _firestore;

  OrderRemoteDataSourceImpl(
    this._firestore,
  );

  @override
  Future<void> addToOrders(List<OrderItemDTO> items) async {
    printInfo(info: "function addToOrders");
    try {
      final batch = _firestore.batch();
      for (final item in items) {
        batch.set(_firestore.userOrders().doc(item.id), item.toJson());
      }
      await batch.commit();
    } on FirebaseException catch (e) {
      printError(info: e.toString());
      throw ServerException();
    }
  }

  @override
  Future<void> updateOrderItem(OrderItemDTO item) async {
    printInfo(info: "function updateOrderItem");
    try {
      await _firestore.userOrders().doc(item.id).set(item.toJson());
    } on FirebaseException catch (e) {
      printError(info: e.toString());
      throw ServerException();
    }
  }

  @override
  Future<void> clearOrders() async {
    printInfo(info: "function clearOrders");
    try {
      final collection = await _firestore.userOrders().get();
      final batch = _firestore.batch();
      for (final doc in collection.docs) {
        batch.delete(doc.reference);
      }
      return batch.commit();
    } on FirebaseException catch (e) {
      printError(info: e.toString());
      throw ServerException();
    }
  }

  @override
  Future<void> removeFromOrders(OrderItemDTO item) async {
    printInfo(info: "function removeFromOrders");
    await _firestore.userOrders().doc(item.id).delete();
  }

  @override
  Future<List<OrderItemDTO>> getOrders() async {
    printInfo(info: "function getOrders");
    List<OrderItemDTO> orderItems = [];
    try {
      final collection = await _firestore.userOrders().get();
      for (final doc in collection.docs) {
        orderItems.add(OrderItemDTO.fromJson(doc.data()).copyWith(id: doc.id));
      }
    } catch (error) {
      printError(info: error.toString());
      throw ServerException();
    }
    return orderItems;
  }
}
