import 'package:flutter/material.dart';

import '../../../../core/services/size_config.dart';
import '../widgets/on_boarding_body.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OnBoardingViewBody(),
    );
  }
}
