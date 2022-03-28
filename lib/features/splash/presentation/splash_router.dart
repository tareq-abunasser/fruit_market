import '../../../routes/mobile_app_pages.dart';

class SplashRouter {
  SplashRouter({
    required isAuthenticated,
    required isFirstTimeOpenApp,
    required isFirstTimeToLogin,
  }){
    SplashRouter._isAuthenticated = isAuthenticated;
    SplashRouter._isFirstTimeOpenApp = isFirstTimeOpenApp;
    SplashRouter._isProfileCompleted = isFirstTimeToLogin;
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
