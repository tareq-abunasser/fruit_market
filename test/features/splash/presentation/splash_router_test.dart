import 'package:flutter_test/flutter_test.dart';
import 'package:fruit_market/features/splash/presentation/splash_router.dart';
import 'package:fruit_market/routes/mobile_app_pages.dart';

void main() {
  setUp(() {});

  group('navigateToNextScreen ', () {
    test(
        'navigateToNextScreen should navigate to complete profile page when isFirstTimeToLogin true and isAuthenticated true ',
        () {
      SplashRouter(
        isAuthenticated: true,
        isFirstTimeOpenApp: false,
        isFirstTimeToLogin: true,
      );
      // SplashRouter.isAuthenticated = true;
      // SplashRouter.isFirstTimeOpenApp = false;
      // SplashRouter.isFirstTimeToLogin = true;

      final String nextScreen = SplashRouter.call();
      expect(nextScreen, MobileRoutes.COMPLETE_PROFILE);
    });

    test(
        'navigateToNextScreen should navigate to  home page when isFirstTimeToLogin false and isAuthenticated true ',
        () {
      SplashRouter(
        isAuthenticated: true,
        isFirstTimeOpenApp: false,
        isFirstTimeToLogin: false,
      );

      // SplashRouter.isAuthenticated = true;
      // SplashRouter.isFirstTimeOpenApp = false;
      // SplashRouter.isFirstTimeToLogin = false;

      final String nextScreen = SplashRouter.call();
      expect(nextScreen, MobileRoutes.HOME);
    });

    test(
        'navigateToNextScreen should navigate to onBoarding page when isFirstTimeOpenApp true',
        () {
      SplashRouter(
        isAuthenticated: false,
        isFirstTimeOpenApp: true,
        isFirstTimeToLogin: false,
      );

      // SplashRouter.isAuthenticated = false;
      // SplashRouter.isFirstTimeOpenApp = true;
      // SplashRouter.isFirstTimeToLogin = false;

      final String nextScreen = SplashRouter.call();
      expect(nextScreen, MobileRoutes.ON_BOARDING);
    });
    test(
        'navigateToNextScreen should navigate to login page when isAuthenticated false and isFirstTimeOpenApp false',
        () {
      SplashRouter(
        isAuthenticated: false,
        isFirstTimeOpenApp: false,
        isFirstTimeToLogin: false,
      );

      // SplashRouter.isAuthenticated = false;
      // SplashRouter.isFirstTimeOpenApp = false;
      // SplashRouter.isFirstTimeToLogin = false;

      final String nextScreen = SplashRouter.call();
      expect(nextScreen, MobileRoutes.LOGIN);
    });
  });
}
