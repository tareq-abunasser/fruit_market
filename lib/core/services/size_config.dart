import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
    print('screenWidth: $screenWidth');
    print('screenHeight: $screenHeight');
    print('defaultSize: $defaultSize');
    print('orientation: $orientation');
    print('isLandscape: ${orientation == Orientation.landscape}');
    print('isLandscape: ${orientation == Orientation.portrait}');
  }

  void initWithoutContext() {

    BuildContext? context = Get.context;
    screenWidth = context?.width;
    screenHeight = context?.height;
    Orientation? orientation = context?.orientation;
    print('screenWidth: $screenWidth');
    print('screenHeight: $screenHeight');
    print('defaultSize: $defaultSize');
    print('orientation: $orientation');
    print('isLandscape: ${context?.isLandscape}');
    print('isLandscape: ${context?.isPortrait}');
  }
}
