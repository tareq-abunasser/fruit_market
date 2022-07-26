// import 'package:fruit_market/features/auth/domain/usecases/get_user_info.dart';
// import 'package:injectable/injectable.dart';
//
// import '../../../injection.dart';
// import '../../../routes/mobile_app_pages.dart';
// import '../../features/auth/domain/usecases/get_if_user_time_open_app.dart';
// import '../../features/auth/domain/usecases/get_signed_in_user.dart';
//
// @injectable
// class MainRoute {
//   final GetSignedInUser _signedInUser;
//   final GetIfUserFirstTimeToOpenApp _ifUserFirstTimeToOpenApp;
//   final GetUserInfo _userInfo;
//
//   SplashRouter(
//       this._signedInUser,
//       this._ifUserFirstTimeToOpenApp,
//       this._userInfo,
//       );
//
//   String call() {
//     bool? isAuthenticated;
//     isAuthenticated = _signedInUser().isRight();
//     bool? isFirstTimeOpenApp;
//     isFirstTimeOpenApp = _ifUserFirstTimeToOpenApp();
//     // here exception
//     bool isProfileCompleted= true;
//     _userInfo.getUser().then((value) {
//       isProfileCompleted = value.isRight();
//     });
//     if (isAuthenticated) {
//       if (isProfileCompleted) {
//         return MobileRoutes.HOME;
//       } else {
//         return MobileRoutes.COMPLETE_PROFILE;
//       }
//     } else if (isFirstTimeOpenApp) {
//       return MobileRoutes.ON_BOARDING;
//     } else {
//       return MobileRoutes.LOGIN;
//     }
//   }
// }
