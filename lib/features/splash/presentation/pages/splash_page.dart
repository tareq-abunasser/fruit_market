import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constants.dart';
import '../../../../core/utils/size_config.dart';
import '../../../../injection.dart';
import '../../domain/splash_router.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    goToNextView();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(),
    );

  }

  void goToNextView()  {
    debugPrint("function : goToNextView");
    FlutterNativeSplash.remove();
    String page = SplashRouter.initialRoute;
    debugPrint("page: $page");
    Future.delayed(const Duration(seconds: 1), () {
      Get.offAndToNamed(page);
    });

  }
}
