// import 'package:get/get.dart';
//
// import '../../../core/utils/navigator/navigator_factory.dart';
// import '../../../routes/mobile_app_pages.dart';
//
// class SplashRouter {
//   SplashRouter({
//     required this.navigatorFactory,
//     required this.isAuthenticated,
//     required this.isFirstTimeOpenApp,
//     required this.isNewUser,
//   });
//
//   final NavigatorFactory navigatorFactory;
//   final bool isAuthenticated;
//   final bool isFirstTimeOpenApp;
//   final bool isNewUser;
//   void navigateToNextScreen() {
//     if (isAuthenticated) {
//       navigatorFactory.offAndToNamed(MobileRoutes.HOME);
//     } else if (isFirstTimeOpenApp) {
//       navigatorFactory.offAndToNamed(MobileRoutes.ON_BOARDING);
//     } else {
//       navigatorFactory.offAndToNamed(MobileRoutes.LOGIN);
//     }
//   }
// }
