import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fruit_market/features/home/domain/entities/product.dart';
import 'package:fruit_market/features/home/domain/entities/value_objects.dart';
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
    @HiveField(3) @JsonKey(name: 'delivered_on') @ServerTimestampConverter() required  FieldValue deliveredOn,
    @HiveField(4) @JsonKey(name: 'rate') required double rate,

  }) = _OrderItemDTO;

  factory OrderItemDTO.fromDomain(OrderItem orderItem) {
    return OrderItemDTO(
      id: orderItem.id.getOrCrash(),
      name: orderItem.name.getOrCrash(),
      rate: orderItem.rate,
      image: orderItem.imageURL.getOrCrash(),
      deliveredOn: FieldValue.serverTimestamp(),
    );
  }
  // @required @ServerTimestampConverter() FieldValue serverTimeStamp,

  OrderItem toDomain() {
    return OrderItem(
      id: UniqueId.fromUniqueString(id!),
      rate: rate,
      name: ItemName(name),
      imageURL: ImageURL(image),
      deliveredOn: deliveredOn is Timestamp ? (deliveredOn as Timestamp).toDate() : DateTime.now(),
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
class ServerTimestampConverter implements JsonConverter<FieldValue, Object> {
  const ServerTimestampConverter();

  // @override
  // static DateTime? fromJson(Object? json) {
  //   if (json is Timestamp) {
  //     return json.toDate();
  //   }
  //   return null;
  // }
  @override
  FieldValue fromJson(Object json) {
    return FieldValue.serverTimestamp();
  }

  @override
  Object toJson(FieldValue fieldValue) => fieldValue;
}

//    @HiveField(3) @JsonKey(name: 'delivered_on')  @ServerTimestampConverter() required  FieldValue deliveredOn,
//
// abstract class NoteDto implements _$NoteDto {
//   const NoteDto._();
//
//   const factory NoteDto({
//     @JsonKey(ignore: true) String id,
//     @required String body,
//     @required int color,
//     @required List<TodoItemDto> todos,
//     @required @ServerTimestampConverter() FieldValue serverTimeStamp,
//   }) = _NoteDto;
//
//   factory NoteDto.fromDomain(Note note) {
//     return NoteDto(
//       id: note.id.getOrCrash(),
//       body: note.body.getOrCrash(),
//       color: note.color.getOrCrash().value,
//       todos: note.todos
//           .getOrCrash()
//           .map(
//             (todoItem) => TodoItemDto.fromDomain(todoItem),
//       )
//           .asList(),
//       serverTimeStamp: FieldValue.serverTimestamp(),
//     );
//   }
//
//   Note toDomain() {
//     return Note(
//       id: UniqueId.fromUniqueString(id),
//       body: NoteBody(body),
//       color: NoteColor(Color(color)),
//       todos: List3(todos.map((dto) => dto.toDomain()).toImmutableList()),
//     );
//   }
//
//   factory NoteDto.fromJson(Map<String, dynamic> json) =>
//       _$NoteDtoFromJson(json);
//
//   factory NoteDto.fromFirestore(DocumentSnapshot doc) {
//     return NoteDto.fromJson(doc.data()).copyWith(id: doc.id);
//   }
// }