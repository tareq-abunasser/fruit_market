import 'package:flutter/material.dart';
import 'package:fruit_market/core/constant/themes.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';

import 'preferences_helper.dart';

abstract class ThemeService {
  void switchTheme();

  bool get isDarkMode;

  ThemeMode get theme;
}

@LazySingleton(as: ThemeService)
class ThemeServiceImpl implements ThemeService {
  final PreferencesHelper _preferencesManager;

  ThemeServiceImpl(this._preferencesManager);

  static const _key = 'isDarkMode';

  @override
  ThemeMode get theme => _loadThemeFromCache() ?? ThemeMode.system;

  @override
  void switchTheme() {
    Get.changeTheme(Get.isDarkMode ? lightTheme : darkTheme);
    _saveThemeToCache(!Get.isDarkMode);
  }

  ThemeMode? _loadThemeFromCache() {
    if (_preferencesManager.isContainsKey(key: _key)) {
      final bool isDarkMode = _preferencesManager.getData(key: _key);
      return isDarkMode ? ThemeMode.dark : ThemeMode.light;
    }
    return null;
  }

  _saveThemeToCache(bool isDarkMode) =>
      _preferencesManager.saveData(key: _key, data: isDarkMode);

  @override
  bool get isDarkMode {
    return Get.isDarkMode;
  }
}
