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
  }

  void initWithoutContext() {
    BuildContext? context = Get.context;
    screenWidth = context?.width;
    screenHeight = context?.height;
    Orientation? orientation = context?.orientation;
  }
}
