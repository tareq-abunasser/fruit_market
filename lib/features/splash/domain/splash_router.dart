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

  Future<String> call() async {
    bool isFirstTimeOpenApp = _isUserFirstTimeToOpenApp();
    if (isFirstTimeOpenApp) {
      initial = MobileRoutes.ON_BOARDING;
      return MobileRoutes.ON_BOARDING;
    }

    bool isAuthenticated = _signedInUser().isRight();
    print("isAuthenticated : $isAuthenticated");
    if (!isAuthenticated) {
      initial = MobileRoutes.LOGIN;
      return MobileRoutes.LOGIN;
    }
    // return MobileRoutes.AccountInitial;

    bool isUserInfoExist = false;
    var userInfo = await _userInfo();
    isUserInfoExist = userInfo.fold(() => false, (a) => a.isRight());
    if (isUserInfoExist) {
      initial = MobileRoutes.Main;
      return MobileRoutes.Main;
    }
    initial = MobileRoutes.UserForm;
    return MobileRoutes.UserForm;
  }
  static String get initialRoute => initial;
}
