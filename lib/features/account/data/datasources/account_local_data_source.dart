import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/entities/exceptions.dart';
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
    _hiveManager.userBox!.put(userCache.id, userCache);
  }

  @override
  void deleteAccountData() {
    _hiveManager.userBox!.clear();
  }

  @override
  UserDTO? getAccountData() {
    return _hiveManager.userBox!.values.firstOrNull;
  }
}
