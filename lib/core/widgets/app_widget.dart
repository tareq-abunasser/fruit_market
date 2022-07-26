import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_market/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:fruit_market/injection.dart';
import '../constants.dart';
import '../../localization/localization_service.dart';
import '../../routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AppWidget extends StatelessWidget {
  AppWidget({Key? key}) : super(key: key);
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => getIt<AuthCubit>()),
        ],
        child:  GetMaterialApp(
            debugShowCheckedModeBanner: false,
            enableLog: true,
            getPages: routes,
            initialRoute: initial,
            locale: LocalizationService.locale,
            navigatorKey: navigatorKey,
            translations: LocalizationService(),
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
            theme: ThemeData(
              fontFamily: 'Poppins',
              appBarTheme: const AppBarTheme(
                color: kMainColor,
              ),
              dividerColor: kDividerColor,
              primaryColor: kMainColor,
              // accentColor: const Color.fromRGBO(7, 0, 0, 1.0),
              tabBarTheme: const TabBarTheme(
                 labelColor: kDividerColor,
                unselectedLabelColor: const Color.fromRGBO(52, 50, 50, 1.0),
                labelStyle: TextStyle(
                  fontSize: 18,

                )
                // unselectedLabelColor: kMainColor,
              ),
              scaffoldBackgroundColor: kDividerColor,
              progressIndicatorTheme: const ProgressIndicatorThemeData(
                color: kMainColor,
              ),
              floatingActionButtonTheme: const FloatingActionButtonThemeData(
                backgroundColor: kMainColor,
                sizeConstraints: BoxConstraints(
                  minWidth: 80,
                  minHeight: 80,
                ),
              ),
              inputDecorationTheme: InputDecorationTheme(
                // labelStyle: GoogleFonts.cairo(
                //     textStyle: const TextStyle(
                //         color: Color.fromRGBO(23, 143, 73, 1),
                //         fontSize: 12,
                //         fontWeight: FontWeight.normal)),
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: kMainColor),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: kMainColor),
                ),
              ),
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
          ),
        );
  }
}
