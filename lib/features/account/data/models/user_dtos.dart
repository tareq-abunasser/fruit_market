import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:fruit_market/features/auth/data/models/user_dtos.dart';
import 'package:fruit_market/features/auth/domain/entities/user.dart';
import '../../../../core/entities/value_objects.dart';

import '../../domain/entities/user.dart';
import '../../domain/entities/value_objects.dart';
// import 'package:json_annotation/json_annotation.dart';

part 'user_info_dtos.freezed.dart';

part 'user_info_dtos.g.dart';

// @JsonSerializable()
@freezed
abstract class UserInfoDTO implements _$UserInfoDTO {
  const UserInfoDTO._();

  const factory UserInfoDTO({
     required String id,
    @JsonKey(name: 'name') required String fullName,
    @JsonKey(name: 'phone') required int phoneNumber,
    @JsonKey(name: 'address') required String address,
  }) = _UserInfoDTO;

  factory UserInfoDTO.fromDomain(UserInfo userInfo) {
    return UserInfoDTO(
      id: userInfo.user.uniqueId.getOrCrash(),
      fullName: userInfo.fullName.getOrCrash(),
      phoneNumber: userInfo.phoneNumber.getOrCrash(),
      address: userInfo.address.getOrCrash(),
    );
  }

  UserInfo toDomain() {
    return UserInfo(
      user: User(uniqueId: UniqueId.fromUniqueString(id)),
      fullName: FullName(fullName),
      phoneNumber: PhoneNumber(phoneNumber.toString()),
      address: Address(address),
    );
  }

  factory UserInfoDTO.fromJson(Map<String, dynamic> json) =>
      _$UserInfoDTOFromJson(json);

  factory UserInfoDTO.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data()! as Map<String, dynamic>;
    return UserInfoDTO.fromJson(data).copyWith(id: doc.id);
  }
}
