import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/user.dart';
import '../../domain/entities/value_objects.dart';

part 'user_dtos.freezed.dart';

part 'user_dtos.g.dart';

@freezed
abstract class UserDTO implements _$UserDTO {
  const UserDTO._();

  const factory UserDTO({
    required String id,
  }) = _UserDTO;

  factory UserDTO.fromDomain(User user) {
    return UserDTO(
      id: user.uniqueId.getOrCrash(),
    );
  }

  User toDomain() {
    return User(
      uniqueId: UniqueId.fromUniqueString(id),
    );
  }

  factory UserDTO.fromJson(Map<String, dynamic> json) =>
      _$UserDTOFromJson(json);
}
