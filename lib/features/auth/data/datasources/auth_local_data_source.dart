import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:fruit_market/features/auth/data/models/user_dtos.dart';
import 'package:fruit_market/features/auth/data/models/user_info_dtos.dart';
import 'package:fruit_market/features/auth/domain/entities/user_info.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/entities/exceptions.dart';
import '../../../../core/utils/preferences_manager.dart';
import '../../domain/entities/user.dart';

abstract class AuthLocalDataSource {
  /// Gets the cached [user info]
  /// the user had an internet connection.
  ///
  /// Throws [CacheException] if no cached data is present.
  UserDTO getSignedInUser();

  Future<void> cacheSignedInUser(UserDTO userCache);

  UserInfoDTO getUserInfo();

  Future<void> cacheUserInfo(UserInfoDTO userInfoCache);

  Future<void> signOut();

  bool isFirstTimeToOpenApp();
}

@LazySingleton(as: AuthLocalDataSource)
class AuthLocalDataSourceImpl extends AuthLocalDataSource {
  final PreferencesManager _preferencesManager;
  static const String PREF_USER_UNIQUE_ID = 'userId';
  static const String PREF_USER_INFO = 'userInfo';
  static const String PREF_IS_FIRST_TIME_OPEN_APP = "firstTimeOpenApp";

  AuthLocalDataSourceImpl(this._preferencesManager);

  @override
  UserDTO getSignedInUser() {
    // if(preferencesManager.isContainsKey(key:PREF_USER_UNIQUE_ID ))
    final String userId = _preferencesManager.getData(key: PREF_USER_UNIQUE_ID);
    if (userId == null) {
      throw CacheException();
    }

    return UserDTO.fromJson(json.decode(userId));
  }

  @override
  Future<void> cacheUserInfo(UserInfoDTO userInfoCache) async {
    await _preferencesManager.saveData(
        key: PREF_USER_INFO, data: json.encode(userInfoCache.toJson()));
  }

  @override
  UserInfoDTO getUserInfo() {
    final userInfo = _preferencesManager.getData(key: PREF_USER_INFO);
    if (userInfo == null) {
      throw CacheException();
    }
    return UserInfoDTO.fromJson(json.decode(userInfo));
  }

  @override
  Future<void> cacheSignedInUser(UserDTO userCache) async {
    await _preferencesManager.saveData(
        key: PREF_USER_UNIQUE_ID, data: json.encode(userCache.toJson()));

  }

  @override
  Future<void> signOut() async {
    await _preferencesManager.clearAllData();
  }

  @override
  bool isFirstTimeToOpenApp() {
    final isFirstTimeOpenApp =
        _preferencesManager.getData(key: PREF_IS_FIRST_TIME_OPEN_APP);
    if (isFirstTimeOpenApp == null) {
      _preferencesManager.saveData(
          key: PREF_IS_FIRST_TIME_OPEN_APP, data: false);
      return true;
    }
    return false;
  }
}
