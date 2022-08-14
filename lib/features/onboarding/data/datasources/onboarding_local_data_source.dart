import 'dart:convert';

import 'package:injectable/injectable.dart';

import '../../../../core/utils/preferences_manager.dart';

abstract class OnBoardingLocalDataSource {
  bool isFirstTimeToOpenApp();
}

@LazySingleton(as: OnBoardingLocalDataSource)
class OnBoardingLocalDataSourceImpl extends OnBoardingLocalDataSource {
  final PreferencesManager _preferencesManager;
  static const String prefIsFirstTimeToOpenApp = "firstTimeOpenApp";

  OnBoardingLocalDataSourceImpl(this._preferencesManager);

  @override
  bool isFirstTimeToOpenApp() {
    final isFirstTimeOpenApp =
        _preferencesManager.getData(key: prefIsFirstTimeToOpenApp);
    if (isFirstTimeOpenApp == null) {
      _preferencesManager.saveData(
          key: prefIsFirstTimeToOpenApp, data: false);
      return true;
    }
    return false;
  }
}
