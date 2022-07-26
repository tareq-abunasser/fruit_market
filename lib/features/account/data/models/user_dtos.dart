import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fruit_market/features/auth/domain/entities/value_objects.dart';
import 'package:hive/hive.dart';

import '../../../../core/entities/value_objects.dart';
import '../../../home/domain/entities/value_objects.dart';
import '../../domain/entities/user.dart';
import '../../domain/entities/value_objects.dart';

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
    @HiveField(3) @JsonKey(name: 'email') required String email,
  }) = _UserDTO;

  factory UserDTO.fromDomain(User user) {
    return UserDTO(
      id: user.id.getOrCrash(),
      fullName: user.name.getOrCrash(),
      photoURL: user.imageURL.getOrCrash(),
      email: user.email.getOrCrash(),
    );
  }

  User toDomain() {
    return User(
      id: UniqueId.fromUniqueString(id!),
      name: FullName(fullName),
      imageURL: ImageURL(photoURL),
      email: EmailAddress(email),
    );
  }

  factory UserDTO.fromJson(Map<String, dynamic> json) =>
      _$UserDTOFromJson(json);

  factory UserDTO.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data()! as Map<String, dynamic>;
    return UserDTO.fromJson(data).copyWith(id: doc.id);
  }
}
