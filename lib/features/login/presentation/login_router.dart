import '../../../routes/mobile_app_pages.dart';

class LoginRouter {
  LoginRouter({
    required isAuthenticated,
    required isFirstTimeOpenApp,
    required isFirstTimeToLogin,
  }){
    LoginRouter._isAuthenticated = isAuthenticated;
    LoginRouter._isFirstTimeOpenApp = isFirstTimeOpenApp;
    LoginRouter._isProfileCompleted = isFirstTimeToLogin;
  }

  static  bool _isAuthenticated = false;
  static  bool _isFirstTimeOpenApp = true;
  static  bool _isProfileCompleted = false;

  static String call() {
    if (_isAuthenticated) {
      if (_isProfileCompleted) {
        return MobileRoutes.COMPLETE_PROFILE;
      } else {
        return MobileRoutes.HOME;
      }
    } else if (_isFirstTimeOpenApp) {
      return MobileRoutes.ON_BOARDING;
    } else {
      return MobileRoutes.LOGIN;
    }
  }
}
