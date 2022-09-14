// ignore_for_file: constant_identifier_names

import 'package:flutter/widgets.dart';
import 'package:fruit_market/features/auth/presentation/pages/login_page.dart';
import 'package:fruit_market/features/notification/presentation/pages/notification_page.dart';
import 'package:fruit_market/injection.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import '../features/account/domain/usecases/get_user_info.dart';
import '../features/account/presentation/pages/account_page.dart';
import '../features/account/presentation/pages/account_settings_page.dart';
import '../features/account/presentation/pages/help_page.dart';
import '../features/account/presentation/pages/language_settings_page.dart';
import '../features/account/presentation/pages/user_form_page.dart';
import '../features/auth/domain/usecases/get_signed_in_user.dart';
import '../features/cart/presentation/pages/shopping_cart_page.dart';
import '../features/favourite/presentation/pages/favourite_page.dart';
import '../features/home/presentation/pages/main_page.dart';
import '../features/onboarding/domain/usecases/get_if_user_time_open_app.dart';
import '../features/onboarding/presentation/pages/on_boarding_view.dart';
import '../features/orders/presentation/pages/orders_page.dart';
import '../features/product/presentation/pages/product_details_page.dart';
import '../features/product/presentation/pages/search_page.dart';
import '../features/splash/presentation/pages/splash_page.dart';

const String MOBILE_INITIAL = MobileRoutes.SPLASH;

final List<GetPage<Widget>> mobileRoutes = <GetPage<Widget>>[
  GetPage<SplashPage>(
    name: MobileRoutes.SPLASH,
    page: () => const SplashPage(),
    middlewares: [NotAuthMiddleware()],
  ),
  GetPage<OnBoardingView>(
      name: MobileRoutes.ON_BOARDING,
      page: () => const OnBoardingView(),
      middlewares: [OnBoardingMiddleware()]),
  GetPage<LoginPage>(
      name: MobileRoutes.LOGIN,
      page: () => const LoginPage(),
      middlewares: [AuthMiddleware()]),
  GetPage<UserFormPage>(
      name: MobileRoutes.UserForm,
      page: () => UserFormPage(),
      middlewares: [CompleteUserInfoMiddleware(), NotAuthMiddleware()]),
  GetPage<AccountPage>(
      name: MobileRoutes.Account,
      page: () => const AccountPage(),
      middlewares: [NotAuthMiddleware()]),
  GetPage<OrdersPage>(
      name: MobileRoutes.Orders,
      page: () => const OrdersPage(),
      middlewares: [NotAuthMiddleware()]),
  GetPage<MainPage>(
      name: MobileRoutes.Main,
      page: () => MainPage(),
      middlewares: [NotAuthMiddleware()]),
  GetPage<AccountSettingsPage>(
      name: MobileRoutes.ACCOUNT_SETTINGS,
      page: () => const AccountSettingsPage(),
      middlewares: [NotAuthMiddleware()]),
  GetPage<HelpPage>(
      name: MobileRoutes.HELP,
      page: () => const HelpPage(),
      middlewares: [NotAuthMiddleware()]),
  GetPage<FavouritePage>(
    name: MobileRoutes.Favourite,
    page: () => const FavouritePage(),
    middlewares: [NotAuthMiddleware()],
  ),
  GetPage<ShoppingCartPage>(
    name: MobileRoutes.Cart,
    page: () => const ShoppingCartPage(),
    middlewares: [NotAuthMiddleware()],
  ),
  GetPage<SearchPage>(
    name: MobileRoutes.Search,
    page: () => const SearchPage(),
    middlewares: [NotAuthMiddleware()],
  ),
  GetPage<ProductDetailsPage>(
    name: MobileRoutes.Product,
    page: () => const ProductDetailsPage(),
    middlewares: [NotAuthMiddleware()],
  ),
  GetPage<LanguageSettingsPage>(
    name: MobileRoutes.Language,
    page: () => const LanguageSettingsPage(),
    middlewares: [NotAuthMiddleware()],
  ),
  GetPage<NotificationPage>(
    name: MobileRoutes.Notification,
    page: () => const NotificationPage(),
    middlewares: [NotAuthMiddleware()],
  ),
];

abstract class MobileRoutes {
  static const String SPLASH = '/mobile-splash';
  static const String LOGIN = '/mobile-login';
  static const String HOME = '/mobile-home';
  static const String Cart = '/mobile-cart';
  static const String ON_BOARDING = '/mobile-on-boarding';
  static const String UserForm = '/mobile-user-form';
  static const String Account = '/mobil-account';
  static const String Orders = '/mobile-orders';
  static const String Main = '/mobile-main';
  static const String ACCOUNT_SETTINGS = '/mobile-account-settings';
  static const String HELP = '/mobile-help';
  static const String Favourite = '/mobile-favorite';
  static const String Search = '/mobile-search';
  static const String Product = '/mobile-product-details';
  static const String Language = '/mobile-language';
  static const String AccountInitial = '/mobile-account-initial';
  static const String Notification = '/mobile-notification';
}

class AuthMiddleware extends GetMiddleware {
  @override
  int? get priority => 2;

  @override
  RouteSettings? redirect(String? route) {
    print('AuthMiddleware redirecting to $route');
    if (getIt<GetSignedInUser>().call().isRight()) {
      return const RouteSettings(
        name: MobileRoutes.UserForm,
      );
    }
    return super.redirect(route);
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

  @override
  GetPage? onPageCalled(GetPage? page) {
    print(page?.name);
    return super.onPageCalled(page);
  }
}

class NotAuthMiddleware extends GetMiddleware {
  @override
  int? get priority => 1;

  @override
  RouteSettings? redirect(String? route) {
    if (getIt<GetSignedInUser>().call().isLeft()) {
      return const RouteSettings(
        name: MobileRoutes.LOGIN,
      );
    }
    return super.redirect(route);
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

  @override
  GetPage? onPageCalled(GetPage? page) {
    print(page?.name);
    return super.onPageCalled(page);
  }
}

class OnBoardingMiddleware extends GetMiddleware {
  @override
  int? get priority => 3;

  @override
  RouteSettings? redirect(String? route) {
    if (!getIt<GetIfUserFirstTimeToOpenApp>().call()) {
      return const RouteSettings(
        name: MobileRoutes.LOGIN,
      );
    }
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

  @override
  GetPage? onPageCalled(GetPage? page) {
    print(page?.name);
    return super.onPageCalled(page);
  }
}

class CompleteUserInfoMiddleware extends GetMiddleware {
  @override
  int? get priority => 4;

  @override
  Future<GetNavConfig?> redirectDelegate(GetNavConfig route) async {
    bool isUserInfoExist = false;
    var userInfo = await getIt<GetUserInfo>().call();
    isUserInfoExist = userInfo.fold(() => false, (a) => a.isRight());
    if (isUserInfoExist) {
      return GetNavConfig.fromRoute(MobileRoutes.Main);
    }
    return await super.redirectDelegate(route);
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

  @override
  GetPage? onPageCalled(GetPage? page) {
    print(page?.name);
    return super.onPageCalled(page);
  }
}
