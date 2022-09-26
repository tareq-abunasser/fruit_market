import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_market/core/constant/themes.dart';
import 'package:fruit_market/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:fruit_market/injection.dart';
import '../constant/constants.dart';
import '../../localization/localization_service.dart';
import '../../routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart';
import '../../../../injection.dart';
import '../services/theme_service.dart';

class AppWidget extends StatelessWidget {
  AppWidget({Key? key}) : super(key: key);
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<AuthCubit>()),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        enableLog: true,
        getPages: routes,
        initialRoute: initial,
        locale: getIt<LocalizationService>().initialLocale,
        fallbackLocale: LocalizationService.locale,
        translations: getIt<LocalizationService>(),
        navigatorKey: navigatorKey,
        builder: (context, widget) => ResponsiveWrapper.builder(
          widget,
          maxWidth: 1200,
          minWidth: 480,
          // defaultScale: true,
          breakpoints: [
            const ResponsiveBreakpoint.resize(480, name: MOBILE),
            const ResponsiveBreakpoint.autoScale(800, name: TABLET),
            const ResponsiveBreakpoint.resize(1000, name: DESKTOP),
          ],
        ),
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: getIt<ThemeService>().theme,
      ),
    );
  }
}
