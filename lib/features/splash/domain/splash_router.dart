import 'package:fruit_market/features/auth/domain/usecases/get_user_info.dart';
import 'package:injectable/injectable.dart';

import '../../../injection.dart';
import '../../../routes/mobile_app_pages.dart';
import '../../auth/domain/usecases/get_if_user_time_open_app.dart';
import '../../auth/domain/usecases/get_signed_in_user.dart';

@injectable
class SplashRouter {
  final GetSignedInUser _signedInUser;
  final GetIfUserFirstTimeToOpenApp _ifUserFirstTimeToOpenApp;
  final GetUserInfo _userInfo;

  SplashRouter(
    this._signedInUser,
    this._ifUserFirstTimeToOpenApp,
    this._userInfo,
  );

  Future<String> call() async{
    bool? isFirstTimeOpenApp;
    isFirstTimeOpenApp = _ifUserFirstTimeToOpenApp();
    // here exception
    bool isProfileCompleted= false;
    if (isFirstTimeOpenApp) {
      return MobileRoutes.ON_BOARDING;
    }
    bool? isAuthenticated;
    isAuthenticated = _signedInUser().isRight();
    if (isAuthenticated) {
      await _userInfo.getUser().then((value) {
        isProfileCompleted = value.isRight();
      });
      if (isProfileCompleted) {
        return MobileRoutes.Main;
      } else {
        return MobileRoutes.COMPLETE_PROFILE;
      }
    }else {
      return MobileRoutes.LOGIN;
    }
  }
}
