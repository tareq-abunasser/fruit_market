import 'package:flutter/material.dart';
import 'package:fruit_market/routes/mobile_app_pages.dart';
import 'package:get/get.dart';

import '../../../../core/constant/constants.dart';
import '../../../../core/services/size_config.dart';
import '../../../../injection.dart';
import '../../../account/domain/usecases/get_user_info.dart';
import '../../domain/splash_router.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
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

  void goToNextView() async {
    String page = SplashRouter.initialRoute;
    Future.delayed(const Duration(seconds: 1), () async {
      Get.offAndToNamed(page);
      FlutterNativeSplash.remove();
    });
  }
}
