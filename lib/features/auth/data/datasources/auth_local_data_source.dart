import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:fruit_market/features/auth/data/models/user_dtos.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/entities/exceptions.dart';
import '../../../../core/utils/hive_manager.dart';
import '../../../../core/utils/preferences_manager.dart';
import '../../domain/entities/user.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

abstract class AuthLocalDataSource {
  UserDTO getSignedInUser();

  Future<void> cacheSignedInUser(UserDTO userCache);

  Future<void> signOut();
}

@LazySingleton(as: AuthLocalDataSource)
class AuthLocalDataSourceImpl extends AuthLocalDataSource {
  final PreferencesManager _preferencesManager;
  final HiveManager _hiveManager;
  static const String prefUserUniqueID = 'userId';

  AuthLocalDataSourceImpl(this._preferencesManager, this._hiveManager);

  @override
  UserDTO getSignedInUser() {
    // if(preferencesManager.isContainsKey(key:PREF_USER_UNIQUE_ID ))
    final String userId = _preferencesManager.getData(key: prefUserUniqueID);
    if (userId == null) {
      throw CacheException();
    }

    return UserDTO.fromJson(json.decode(userId));
  }

  @override
  Future<void> cacheSignedInUser(UserDTO userCache) async {
    await _preferencesManager.saveData(
        key: prefUserUniqueID, data: json.encode(userCache.toJson()));
  }

  Future<void> clearUniqueID() async {
    await _preferencesManager.removeData(key: prefUserUniqueID);
  }

  @override
  Future<void> signOut() async {
    // await _preferencesManager.clearAllData();
    await clearUniqueID();
    await _hiveManager.clear();
  }

  Future<void> emptyCached() async {
    print('emptyCached');
    var tempDir = await getTemporaryDirectory();

    if (tempDir.existsSync()) {
      tempDir.deleteSync(recursive: true);
    }
    final appDir = await getApplicationSupportDirectory();
    if (appDir.existsSync()) {
      appDir.deleteSync(recursive: true);
    }
  }
}
