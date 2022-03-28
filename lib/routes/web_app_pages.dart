import 'package:flutter/widgets.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../features/splash/presentation/pages/splash_view.dart';

const String WEB_INITIAL = WebRoutes.HOME;

final List<GetPage<Widget>> webRoutes = <GetPage<Widget>>[
  GetPage<SplashView>(
    name: WebRoutes.LOGIN,
    page: () => SplashView(),
  ),
  GetPage<SplashView>(
    name: WebRoutes.SPLASH,
    page: () => SplashView(),
  ),
  GetPage<SplashView>(
    name: WebRoutes.HOME,
    page: () => SplashView(),
  ),
];

abstract class WebRoutes {
  static const String LOGIN = '/login';
  static const String HOME = '/home';
  static const String SPLASH = '/splash';
}
