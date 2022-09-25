import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constants.dart';

ThemeData lightTheme = ThemeData(
  fontFamily: 'Poppins',
  // textTheme: ThemeData().textTheme.apply(
  //       fontFamily: 'Poppins',
  //     ),
  // primaryTextTheme: ThemeData().textTheme.apply(
  //       fontFamily: 'Poppins',
  //     ),
  appBarTheme: const AppBarTheme(
    color: kMainColor,
    titleTextStyle: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    systemOverlayStyle: SystemUiOverlayStyle(
      /// Status bar color
      statusBarColor: kMainColor,
      /// Status bar brightness (optional)
      statusBarIconBrightness: Brightness.dark,
      /// For Android (dark icons)
      statusBarBrightness: Brightness.light, /// For iOS (dark icons)
    ),
  ),
  cardTheme: const CardTheme(
    shape: RoundedRectangleBorder(
      side: BorderSide(color: Colors.black12, width: 1),
      borderRadius: BorderRadius.all(
        Radius.circular(20.0),
      ),
    ),
  ),
  dividerColor: kDividerColor,
  primaryColor: kMainColor,
  // accentColor: const Color.fromRGBO(7, 0, 0, 1.0),
  tabBarTheme: TabBarTheme(
      labelColor: kDividerColor,
      unselectedLabelColor: const Color.fromRGBO(52, 50, 50, 1.0),
      indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          // Creates border
          color: const Color(0xFFCC7D00)),
      labelStyle: const TextStyle(
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
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20.0),
      borderSide: const BorderSide(color: kMainColor),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20.0),
      borderSide: const BorderSide(color: kMainColor),
    ),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    type: BottomNavigationBarType.shifting,
    backgroundColor: Colors.white38,
    selectedItemColor: kMainColor,
    // unselectedFontSize: 12,
    unselectedItemColor: Colors.black,
    unselectedLabelStyle: TextStyle(color: Colors.black),
    showUnselectedLabels: true,
  ),
  visualDensity: VisualDensity.adaptivePlatformDensity,
);

ThemeData darkTheme = ThemeData.dark().copyWith(
  primaryColor: kMainColor,
  // dividerColor: kDividerColor,
  iconTheme: const IconThemeData(color: kDividerColor),
  primaryTextTheme: ThemeData.dark().textTheme.apply(
        fontFamily: 'Poppins',
        bodyColor: Colors.white,
      ),
  appBarTheme: const AppBarTheme(
    backgroundColor: kMainColor,
    titleTextStyle: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: kMainColor,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    ),
  ),
  tabBarTheme: TabBarTheme(
      unselectedLabelStyle: const TextStyle(
        fontSize: 18,
        color: Colors.white,
      ),
      unselectedLabelColor: Colors.white,
      indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: const Color(0xFFCC7D00)),
      labelStyle: const TextStyle(
        fontSize: 20,
      )),
  progressIndicatorTheme: const ProgressIndicatorThemeData(
    color: kMainColor,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    type: BottomNavigationBarType.shifting,
    selectedItemColor: kMainColor,
    unselectedItemColor: kDividerColor,
    unselectedLabelStyle: TextStyle(color: Colors.black),
    showUnselectedLabels: true,
  ),
  // dividerColor: Colors.black,
);
