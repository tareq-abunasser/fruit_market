import 'dart:convert';
import 'package:fruit_market/features/auth/data/models/user_dtos.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/services/hive_manager.dart';
import '../../../../core/services/preferences_helper.dart';
import 'package:path_provider/path_provider.dart';

abstract class AuthLocalDataSource {
  UserDTO? getSignedInUser();

  void cacheSignedInUser(UserDTO userCache);

  Future<void> signOut();
}

@LazySingleton(as: AuthLocalDataSource)
class AuthLocalDataSourceImpl extends AuthLocalDataSource {
  final PreferencesHelper _preferencesManager;
  final HiveManager _hiveManager;
  static const String prefUserUniqueID = 'userId';

  AuthLocalDataSourceImpl(this._preferencesManager, this._hiveManager);

  @override
  UserDTO? getSignedInUser() {
    printInfo(
        info: 'class:AuthLocalDataSourceImpl , function : getSignedInUser');
    if (_preferencesManager.isContainsKey(key: prefUserUniqueID)) {
      final String userId = _preferencesManager.getData(key: prefUserUniqueID);
      return UserDTO.fromJson(json.decode(userId));
    }
    return null;
  }

  @override
  void cacheSignedInUser(UserDTO userCache) {
    printInfo(
        info: 'class:AuthLocalDataSourceImpl , function : cacheSignedInUser');
    _preferencesManager.saveData(
        key: prefUserUniqueID, data: json.encode(userCache.toJson()));
  }

  void clearUniqueID() {
    printInfo(info: 'class:AuthLocalDataSourceImpl , function : clearUniqueID');
     _preferencesManager.removeData(key: prefUserUniqueID);
  }

  void clearAccountData()  {
    printInfo(
        info: 'class:AuthLocalDataSourceImpl , function : clearAccountData');
     clearUniqueID();
  }

  @override
  Future<void> signOut() async {
    printInfo(info: 'class:AuthLocalDataSourceImpl , function : signOut');
     clearAccountData();
    await _hiveManager.clear();
  }

  Future<void> emptyAllTempDirCached() async {
    printInfo(
        info:
            'class:AuthLocalDataSourceImpl , function : emptyAllTempDirCached');
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
