import 'package:flutter/material.dart';
import 'package:fruit_market/core/widgets/themes.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';

import 'preferences_helper.dart';

abstract class ThemeService {
  void switchTheme();
}

@LazySingleton(as: ThemeService)
class ThemeServiceImpl implements ThemeService {
  final PreferencesHelper _preferencesManager;

  ThemeServiceImpl(this._preferencesManager);

  static const _key = 'isDarkMode';

  ThemeMode get theme =>
      _loadThemeFromCache() ? ThemeMode.dark : ThemeMode.light;

  @override
  void switchTheme() {
    Get.changeTheme(Get.isDarkMode ? lightTheme : darkTheme);
    _saveThemeToCache(!Get.isDarkMode);
  }

  bool _loadThemeFromCache() {
    if (_preferencesManager.isContainsKey(key: _key)) {
      final bool isDarkMode = _preferencesManager.getData(key: _key);
      return isDarkMode;
    }
    return false;
  }

  _saveThemeToCache(bool isDarkMode) =>
      _preferencesManager.saveData(key: _key, data: isDarkMode);
}

void switchTheme() {
  Get.changeTheme(Get.isDarkMode ? lightTheme : darkTheme);
}