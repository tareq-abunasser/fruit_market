import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import '../../../../core/services/hive_manager.dart';
import '../models/user_dtos.dart';

@Singleton()
class AccountHiveManager implements IHiveManager {
  late Box<UserDTO> _userBox;
  static const String hiveUser = 'user_info';

  @override
  Future<void> init() async {
    Hive.registerAdapter(UserDTOAdapter());
    _userBox = await Hive.openBox<UserDTO>(hiveUser);
  }

  Box<UserDTO>? get userBox => _userBox;

  @override
  Future<void> close() async {
    await _userBox.close();
  }

  @override
  Future<void> clear() async {
    await _userBox.clear();
  }
}
