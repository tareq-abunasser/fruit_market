import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fruit_market/features/auth/data/models/user_dtos.dart';

import '../../domain/entities/user_info.dart';
import '../../domain/entities/value_objects.dart';

part 'user_info_dtos.freezed.dart';

part 'user_info_dtos.g.dart';

@freezed
abstract class UserInfoDTO implements _$UserInfoDTO {
  const UserInfoDTO._();

  const factory UserInfoDTO({
    required UserDTO user,
    required String fullName,
    required int phoneNumber,
    required String address,
  }) = _UserInfoDTO;

  factory UserInfoDTO.fromDomain(UserInfo userInfo) {
    return UserInfoDTO(
      user: UserDTO.fromDomain(userInfo.user),
      fullName: userInfo.fullName.getOrCrash(),
      phoneNumber: userInfo.phoneNumber.getOrCrash(),
      address: userInfo.address.getOrCrash(),
    );
  }

  UserInfo toDomain() {
    return UserInfo(
      user: user.toDomain(),
      fullName: FullName(fullName),
      phoneNumber: PhoneNumber(phoneNumber.toString()),
      address: Address(address),
    );
  }

  factory UserInfoDTO.fromJson(Map<String, dynamic> json) =>
      _$UserInfoDTOFromJson(json);
}
