// ignore_for_file: constant_identifier_names

import 'package:flutter/widgets.dart';
import 'package:fruit_market/features/auth/presentation/pages/login_view.dart';
import 'package:fruit_market/features/home/presentation/pages/home_page.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../features/account/presentation/pages/account_page.dart';
import '../features/account/presentation/pages/account_settings_page.dart';
import '../features/account/presentation/pages/help_page.dart';
import '../features/account/presentation/pages/language_settings_page.dart';
import '../features/auth/presentation/pages/complete_information_view.dart';
import '../features/bottom_nav_bar/presentation/pages/main_page.dart';
import '../features/cart/presentation/pages/shopping_cart_page.dart';
import '../features/home/presentation/pages/favourite_page.dart';
import '../features/home/presentation/pages/product_details_page.dart';
import '../features/home/presentation/pages/search_page.dart';
import '../features/onboarding/presentation/pages/on_boarding_view.dart';
import '../features/orders/presentation/pages/orders.dart';
import '../features/splash/presentation/pages/splash_view.dart';

const String MOBILE_INITIAL = MobileRoutes.HOME;

final List<GetPage<Widget>> mobileRoutes = <GetPage<Widget>>[
  GetPage<SplashView>(
      name: MobileRoutes.SPLASH,
      page: () => const SplashView(),
      middlewares: [MyMiddleware()]),
  GetPage<OnBoardingView>(
      name: MobileRoutes.ON_BOARDING,
      page: () => const OnBoardingView(),
      middlewares: [MyMiddleware()]),
  GetPage<HomePage>(
      name: MobileRoutes.HOME,
      page: () => const HomePage(),
      middlewares: [MyMiddleware()]),
  GetPage<LoginView>(
      name: MobileRoutes.LOGIN,
      page: () => const LoginView(),
      middlewares: [MyMiddleware()]),
  GetPage<CompleteInformationView>(
      name: MobileRoutes.COMPLETE_PROFILE,
      page: () => const CompleteInformationView(),
      middlewares: [MyMiddleware()]),
  GetPage<AccountPage>(
      name: MobileRoutes.Account,
      page: () => const AccountPage(),
      middlewares: [MyMiddleware()]),
  GetPage<Orders>(
      name: MobileRoutes.Orders,
      page: () => const Orders(),
      middlewares: [MyMiddleware()]),
  GetPage<MainPage>(
      name: MobileRoutes.Main,
      page: () => MainPage(),
      middlewares: [MyMiddleware()]),
  GetPage<AccountSettingsPage>(
      name: MobileRoutes.ACCOUNT_SETTINGS,
      page: () => const AccountSettingsPage(),
      middlewares: [MyMiddleware()]),
  GetPage<HelpPage>(
      name: MobileRoutes.HELP,
      page: () => const HelpPage(),
      middlewares: [MyMiddleware()]),
  GetPage<FavouritePage>(
    name: MobileRoutes.Favourite,
    page: () => const FavouritePage(),
    middlewares: [MyMiddleware()],
  ),
  GetPage<ShoppingCartPage>(
    name: MobileRoutes.Cart,
    page: () => const ShoppingCartPage(),
    middlewares: [MyMiddleware()],
  ),
  GetPage<SearchPage>(
    name: MobileRoutes.Search,
    page: () => const SearchPage(),
    middlewares: [MyMiddleware()],
  ),
  GetPage<ProductDetailsPage>(
    name: MobileRoutes.Product,
    page: () => const ProductDetailsPage(),
    middlewares: [MyMiddleware()],
  ),
  GetPage<LanguageSettingsPage>(
    name: MobileRoutes.Language,
    page: () => const LanguageSettingsPage(),
    middlewares: [MyMiddleware()],
  ),
];

abstract class MobileRoutes {
  static const String SPLASH = '/mobile-splash';
  static const String LOGIN = '/mobile-login';
  static const String HOME = '/mobile-home';
  static const String Cart = '/mobile-cart';
  static const String ON_BOARDING = '/mobile-on-boarding';
  static const String COMPLETE_PROFILE = '/mobile-complete-profile';
  static const String Account = '/mobil-account';
  static const String Orders = '/mobile-orders';
  static const String Main = '/mobile-main';
  static const String ACCOUNT_SETTINGS = '/mobile-account-settings';
  static const String HELP = '/mobile-help';
  static const String Favourite = '/mobile-favorite';
  static const String Search = '/mobile-search';
  static const String Product = '/mobile-product-details';
  static const String Language = '/mobile-language';

}

class MyMiddleware extends GetMiddleware {
  @override
  GetPage? onPageCalled(GetPage? page) {
    print(page?.name);
    return super.onPageCalled(page);
  }
  @override
  Widget onPageBuilt(Widget page) {
    print('Widget ${page.toStringShort()} will be showed');
    return page;
  }

  @override
  void onPageDispose() {
    print('PageDisposed');
  }
}

class GlobalMiddleware extends GetMiddleware {
  @override
  Widget onPageBuilt(Widget page) {
    print('Widget ${page.toStringShort()} will be showed');
    return page;
  }

  @override
  void onPageDispose() {
    print('PageDisposed');
  }
}


//
// class EnsureAuthMiddleware extends GetMiddleware {
//   @override
//   Future<RouteDecoder?> redirectDelegate(RouteDecoder route) async {
//     // you can do whatever you want here
//     // but it's preferable to make this method fast
//     // await Future.delayed(Duration(milliseconds: 500));
//
//     if (!AuthService.to.isLoggedInValue) {
//       final newRoute = Routes.LOGIN_THEN(route.pageSettings!.name);
//       return RouteDecoder.fromRoute(newRoute);
//     }
//     return await super.redirectDelegate(route);
//   }
// }
//
// class EnsureNotAuthedMiddleware extends GetMiddleware {
//   @override
//   Future<RouteDecoder?> redirectDelegate(RouteDecoder route) async {
//     if (AuthService.to.isLoggedInValue) {
//       //NEVER navigate to auth screen, when user is already authed
//       return null;
//
//       //OR redirect user to another screen
//       //return RouteDecoder.fromRoute(Routes.PROFILE);
//     }
//     return await super.redirectDelegate(route);
//   }
// }

