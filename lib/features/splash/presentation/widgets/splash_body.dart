import 'package:flutter/material.dart';
import 'package:fruit_market/routes/mobile_app_pages.dart';
import 'package:get/get.dart';

import '../../../../core/utils/size_config.dart';
import '../../../../injection.dart';
import '../../domain/splash_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  _SplashViewBodyState createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fadingAnimation;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(milliseconds: 600));
    fadingAnimation =
        Tween<double>(begin: .2, end: 1).animate(animationController!);

    animationController?.repeat(reverse: true);

    goToNextView();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Center(
      child: Column(
        children: [
          const Spacer(),
          FadeTransition(
            opacity: fadingAnimation!,
            child: const Text(
              'Fruit Market',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 51,
                fontWeight: FontWeight.bold,
                color:  Color(0xffffffff),
              ),
            ),
          ),
          Image.asset('assets/images/splash_view_image.webp'),
        ],
      ),
    );
  }
  void goToNextView() async{
   String page =await Future(()=>getIt<SplashRouter>().call());
   Get.offAndToNamed(page);
  }

}
