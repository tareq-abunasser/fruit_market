import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import '../models/user_dtos.dart';

@Singleton()
class AccountHiveManager {
  late Box<UserDTO> _userBox;
  static const String hiveUser = 'user_info';

  Future<void> init() async {
    Hive.registerAdapter(UserDTOAdapter());
    _userBox = await Hive.openBox<UserDTO>(hiveUser);
  }

  Box<UserDTO>? get userBox => _userBox;

  Future<void> close() async {
    await _userBox.close();
  }

  Future<void> clear() async {
    await _userBox.clear();
  }
}
