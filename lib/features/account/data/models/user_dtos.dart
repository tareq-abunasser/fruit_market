import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../core/entities/value_objects.dart';
import '../../domain/entities/user.dart';
import '../../domain/entities/value_objects.dart';
// import 'package:json_annotation/json_annotation.dart';

part 'user_dtos.freezed.dart';

part 'user_dtos.g.dart';

@freezed
abstract class UserDTO extends HiveObject implements _$UserDTO {
  UserDTO._();

  @HiveType(typeId: 4, adapterName: 'UserDTOAdapter')
  factory UserDTO({
    @HiveField(0) @JsonKey(ignore: true) String? id,
    @HiveField(1) @JsonKey(name: 'name') required String fullName,
    @HiveField(2) @JsonKey(name: 'photo_url') required String photoURL,
    @HiveField(4) @JsonKey(name: 'phone') required int phoneNumber,
    @HiveField(5) @JsonKey(name: 'address') required String address,
  }) = _UserDTO;

  factory UserDTO.fromDomain(User user) {
    return UserDTO(
      id: user.id.getOrCrash(),
      fullName: user.fullName.getOrCrash(),
      photoURL: user.imageURL.getOrCrash(),
      address: user.address.getOrCrash(),
      phoneNumber: user.phoneNumber.getOrCrash(),
    );
  }

  User toDomain() {
    return User(
      id: UniqueId.fromUniqueString(id!),
      fullName: FullName(fullName),
      imageURL: ImageURL(photoURL),
      email:
          EmailAddress(firebase_auth.FirebaseAuth.instance.currentUser!.email!),
      phoneNumber: PhoneNumber(phoneNumber.toString()),
      address: Address(address),
    );
  }

  factory UserDTO.fromJson(Map<String, dynamic> json) =>
      _$UserDTOFromJson(json);

  factory UserDTO.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data()! as Map<String, dynamic>;
    return UserDTO.fromJson(data).copyWith(id: doc.id);
  }
}
