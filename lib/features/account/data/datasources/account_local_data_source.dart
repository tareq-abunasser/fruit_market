import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import '../models/user_dtos.dart';
import 'account_hive_manager.dart';

abstract class AccountLocalDataSource {
  UserDTO? getAccountData();

  void cacheAccountData(UserDTO userCache);

  void deleteAccountData();
}

@LazySingleton(as: AccountLocalDataSource)
class AccountLocalDataSourceImpl extends AccountLocalDataSource {
  final AccountHiveManager _hiveManager;

  AccountLocalDataSourceImpl(this._hiveManager);

  @override
  void cacheAccountData(UserDTO userCache) {
    printInfo(info:'function cacheAccountData');
    _hiveManager.userBox!.put(userCache.id, userCache);
  }

  @override
  void deleteAccountData() {
    printInfo(info:'function deleteAccountData');
    _hiveManager.userBox!.clear();
  }

  @override
  UserDTO? getAccountData() {
    printInfo(info:'function getAccountData');
    return _hiveManager.userBox!.values.firstOrNull;
  }
}
