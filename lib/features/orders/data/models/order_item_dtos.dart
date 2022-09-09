import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../core/entities/value_objects.dart';
import '../../../../core/firebase/firestore_helper.dart';
import '../../domain/entities/order_item.dart';

part 'order_item_dtos.freezed.dart';

part 'order_item_dtos.g.dart';

@freezed
abstract class OrderItemDTO extends HiveObject implements _$OrderItemDTO {
  @HiveType(typeId: 7, adapterName: 'OrderItemDTOAdapter')
  factory OrderItemDTO({
    @HiveField(0) @JsonKey(ignore: true) String? id,
    @HiveField(1) @JsonKey(name: 'name') required String name,
    @HiveField(2) @JsonKey(name: 'imageurl') required String image,
    @HiveField(3)
    @JsonKey(name: 'delivered_on')
    @TimestampConverter()
        required Timestamp deliveredOn,
    @HiveField(4) @JsonKey(name: 'rate') required double rate,
  }) = _OrderItemDTO;

  factory OrderItemDTO.fromDomain(OrderItem orderItem) {
    return OrderItemDTO(
      id: orderItem.id.getOrCrash(),
      name: orderItem.name.getOrCrash(),
      rate: orderItem.rate,
      image: orderItem.imageURL.getOrCrash(),
      deliveredOn: Timestamp.now(),
    );
  }

  OrderItem toDomain() {
    return OrderItem(
      id: UniqueId.fromUniqueString(id!),
      rate: rate,
      name: ItemName(name),
      imageURL: ImageURL(image),
      deliveredOn: deliveredOn.toDate(),
    );
  }

  factory OrderItemDTO.fromJson(Map<String, dynamic> json) =>
      _$OrderItemDTOFromJson(json);

  factory OrderItemDTO.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data()! as Map<String, dynamic>;
    return OrderItemDTO.fromJson(data).copyWith(id: doc.id);
  }

  OrderItemDTO._();
}

class TimestampConverter implements JsonConverter<Timestamp, Object> {
  const TimestampConverter();

  @override
  Timestamp fromJson(Object? json) {
    return Timestamp.now();
  }

  @override
  Object toJson(Timestamp time) => time;
}