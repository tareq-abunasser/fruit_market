// ignore_for_file: constant_identifier_names

import 'package:flutter/widgets.dart';
import 'package:fruit_market/features/auth/presentation/pages/login/login_view.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../features/onboarding/presentation/pages/on_boarding_view.dart';
import '../features/splash/presentation/pages/splash_view.dart';

const String MOBILE_INITIAL = MobileRoutes.HOME;

final List<GetPage<Widget>> mobileRoutes = <GetPage<Widget>>[
  GetPage<SplashView>(
    name: MobileRoutes.SPLASH,
    page: () => const SplashView(),
  ),
  GetPage<OnBoardingView>(
    name: MobileRoutes.ON_BOARDING,
    page: () => const OnBoardingView(),
  ),
  GetPage<LoginView>(
    name: MobileRoutes.HOME,
    page: () => const LoginView(),
  ),
  GetPage<SplashView>(
    name: MobileRoutes.CART,
    page: () => SplashView(),
  ),
];

abstract class MobileRoutes {
  static const String SPLASH = '/mobile_splash';
  static const String LOGIN = '/mobile_login';
  static const String HOME = '/mobile_home';
  static const String CART = '/mobile_cart';
  static const String ON_BOARDING = '/mobile_on_boarding';
  static const String COMPLETE_PROFILE = '/mobile_complete_profile';

}


class MyMiddelware extends GetMiddleware {
  @override
  GetPage? onPageCalled(GetPage? page) {
    print(page?.name);
    return super.onPageCalled(page);
  }
}
