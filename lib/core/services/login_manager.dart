import 'package:fruit_market/core/services/preferences_helper.dart';
import 'package:injectable/injectable.dart';


// @lazySingleton
class LoginManager {
  final PreferencesHelper preferencesManager;
  LoginManager({required this.preferencesManager});
  static const String PREF_USER_TOKEN = 'userToken';
  static const String IS_FIRST_TIME_TO_OPEN_APP = 'userFirstTimeOpenApp';
  static const String IS_USER_PROFILE_COMPLETED = 'userProfileCompleted';

  void onLoginSuccess({required String token}) {
    preferencesManager.saveData(key: PREF_USER_TOKEN, data: token);
  }

   void onUserCompleteOnBoarding({required String isFirstTimeOpenApp}) {
     preferencesManager.saveData(
        key: IS_FIRST_TIME_TO_OPEN_APP, data: isFirstTimeOpenApp);
  }

   void onUserCompleteProfile({required String isProfileCompleted}) {
     preferencesManager.saveData(
        key: IS_USER_PROFILE_COMPLETED, data: isProfileCompleted);
  }

  bool get isFirstTimeOpenApp =>
      preferencesManager.getData(key: LoginManager.IS_FIRST_TIME_TO_OPEN_APP) !=
      null;

  String? get token =>
      preferencesManager.getData(key: LoginManager.PREF_USER_TOKEN);

  bool get isAuthenticated => token != null;

  bool get isProfileCompleted =>
      preferencesManager.getData(key: LoginManager.IS_USER_PROFILE_COMPLETED) !=
      null;
}
