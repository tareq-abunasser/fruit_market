import 'package:flutter/foundation.dart';
import 'package:fruit_market/features/account/domain/usecases/get_user_info.dart';
import 'package:injectable/injectable.dart';

import '../../../injection.dart';
import '../../../routes/mobile_app_pages.dart';
import '../../onboarding/domain/usecases/get_if_user_time_open_app.dart';
import '../../auth/domain/usecases/get_signed_in_user.dart';

@injectable
class SplashRouter {
  final GetSignedInUser _signedInUser;
  final GetIfUserFirstTimeToOpenApp _isUserFirstTimeToOpenApp;
  final GetUserInfo _userInfo;
  static String initial = MobileRoutes.LOGIN;

  SplashRouter(
    this._signedInUser,
    this._isUserFirstTimeToOpenApp,
    this._userInfo,
  );

  Future<void> call() async {
    debugPrint("function : SplashRouter.call");
    bool isFirstTimeOpenApp = _isUserFirstTimeToOpenApp();
    if (isFirstTimeOpenApp) {
      initial = MobileRoutes.ON_BOARDING;
      return;
    }

    bool isAuthenticated = _signedInUser().isRight();
    debugPrint("isAuthenticated : $isAuthenticated");
    if (!isAuthenticated) {
      initial = MobileRoutes.LOGIN;
      return;
    }

    bool isUserInfoExist = false;
    var userInfo = await _userInfo();
    isUserInfoExist = userInfo.fold(() => false, (a) => a.isRight());
    debugPrint("isUserInfoExist : $isUserInfoExist");
    if (isUserInfoExist) {
      initial = MobileRoutes.Main;
      return;
    }
    initial = MobileRoutes.UserForm;
    return;
  }

  static String get initialRoute => initial;
}
