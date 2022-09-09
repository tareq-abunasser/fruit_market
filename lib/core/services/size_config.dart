import 'dart:developer';

import 'package:flutter/material.dart';

class SizeConfig {
  static double? screenWidth;
  static double? screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    orientation = MediaQuery.of(context).orientation;

    defaultSize = orientation == Orientation.landscape
        ? screenHeight! * .024
        : screenWidth! * .024;

    print('this is the default size $defaultSize');
  }
  void initTest(){
    screenWidth = WidgetsBinding.instance.window.physicalSize.width;
    screenHeight = WidgetsBinding.instance.window.physicalSize.height;
    defaultSize = screenWidth! * .024;
    // orientation == Orientation.landscape
    //     ? screenHeight! * .024
    //     : screenWidth! * .024;
  }
}
