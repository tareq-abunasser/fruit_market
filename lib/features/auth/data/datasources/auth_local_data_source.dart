import 'package:dartz/dartz.dart';
import 'package:fruit_market/features/auth/data/models/user_dtos.dart';
import 'package:fruit_market/features/auth/data/models/user_info_dtos.dart';
import 'package:fruit_market/features/auth/domain/entities/user_info.dart';

import '../../../../core/entities/exceptions.dart';
import '../../../../core/utils/preferences_manager.dart';
import '../../domain/entities/user.dart';

abstract class AuthLocalDataSource {
  /// Gets the cached [user info]
  /// the user had an internet connection.
  ///
  /// Throws [CacheException] if no cached data is present.
  Option<UserDTO> getSignedInUser();

  Future<void> cacheSignedInUser(UserDTO userCache);

  Option<UserInfoDTO> getUserInfo();

  Future<void> cacheUserInfo(UserInfoDTO userInfoCache);
}

class AuthLocalDataSourceImpl extends AuthLocalDataSource {
  final PreferencesManager preferencesManager;
  static const String PREF_USER_UNIQUE_ID = 'userId';
  static const String PREF_USER_INFO = 'userInfo';

  AuthLocalDataSourceImpl({required this.preferencesManager});

  @override
  Option<UserDTO> getSignedInUser() {
    final userId = preferencesManager.getData(key: PREF_USER_UNIQUE_ID);
    if (userId != null) {
      return optionOf(UserDTO(id: userId));
    } else {
      return none();
    }
  }

  @override
  Future<void> cacheUserInfo(UserInfoDTO userInfoCache) async {
    await preferencesManager.saveData(
        key: PREF_USER_INFO, data: userInfoCache.toJson());
  }

  @override
  Option<UserInfoDTO> getUserInfo() {
    final userInfo = preferencesManager.getData(key: PREF_USER_INFO);
    if (userInfo != null) {
      return optionOf(UserInfoDTO.fromJson(userInfo));
    } else {
      return none();
    }
  }

  @override
  Future<void> cacheSignedInUser(UserDTO userCache) async {
    await preferencesManager.saveData(
        key: PREF_USER_INFO, data: userCache.toJson());
  }
}
