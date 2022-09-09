import 'dart:convert';

import 'package:injectable/injectable.dart';

import '../../../../core/services/preferences_helper.dart';

abstract class OnBoardingLocalDataSource {
  bool isFirstTimeToOpenApp();

  void setUserOpenAppBefore();
}

@LazySingleton(as: OnBoardingLocalDataSource)
class OnBoardingLocalDataSourceImpl extends OnBoardingLocalDataSource {
  final PreferencesHelper _preferencesManager;
  static const String prefIsFirstTimeToOpenApp = "firstTimeOpenApp";

  OnBoardingLocalDataSourceImpl(this._preferencesManager);

  @override
  bool isFirstTimeToOpenApp() {
    bool? isFirstTimeOpenApp =
        _preferencesManager.getData(key: prefIsFirstTimeToOpenApp);
    if (isFirstTimeOpenApp == null) {
      return true;
    }
    return false;
  }

  @override
  void setUserOpenAppBefore() {
    _preferencesManager.saveData(key: prefIsFirstTimeToOpenApp, data: true);
  }
}
