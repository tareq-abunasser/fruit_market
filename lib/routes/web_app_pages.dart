import 'package:flutter/widgets.dart';
import 'package:fruit_market/features/auth/presentation/pages/login_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../features/splash/presentation/pages/splash_page.dart';

const String WEB_INITIAL = WebRoutes.LOGIN;

final List<GetPage<Widget>> webRoutes = <GetPage<Widget>>[
  GetPage<SplashPage>(
    name: WebRoutes.LOGIN,
    page: () => const LoginPage(),
  ),
];

abstract class WebRoutes {
  static const String LOGIN = '/login';
  static const String HOME = '/home';
}
