import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruit_market/features/auth/presentation/cubit/sign_in/sign_in_cubit.dart';
import 'package:fruit_market/routes/mobile_app_pages.dart';
import 'package:get/get.dart';

import '../../../../core/constants.dart';
import '../../../../core/services/size_config.dart';
import '../../../../core/widgets/custom_buttons.dart';
import '../../../../core/widgets/space_widget.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(value: 10),
        SizedBox(
          child: Image.asset(kLogo),
          height: SizeConfig.defaultSize! * 17,
        ),
        Text.rich(
          TextSpan(
            style:  TextStyle(
              fontFamily: 'Poppins',
              fontSize: 51,
              color: Theme.of(context).primaryColor,
            ),
            children: [
              TextSpan(
                text: "marketName".tr,
                style: const TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          textHeightBehavior:
              const TextHeightBehavior(applyHeightToFirstAscent: false),
          textAlign: TextAlign.left,
        ),
        const Expanded(child: SizedBox()),
        Row(
          children: [
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: CustomButtonWithIcon(
                  onTap: () {
                    SignInCubit.getInstance(context).signInWithGoogle();
                  },
                  color: const Color(0xFFdb3236),
                  iconData: FontAwesomeIcons.googlePlusG,
                  text: 'LoginWith'.tr,
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: CustomButtonWithIcon(
                  onTap: () {
                    SignInCubit.getInstance(context).signInWithFacebook();
                  },
                  color: const Color(0xFF4267B2),
                  iconData: FontAwesomeIcons.facebookF,
                  text: 'LoginWith'.tr,
                ),
              ),
            )
          ],
        ),
        const Expanded(child: SizedBox()),
      ],
    );
  }
}
