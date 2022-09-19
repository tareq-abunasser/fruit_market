import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/widgets/custom_text_field.dart';
import '../../../../routes/mobile_app_pages.dart';
import '../../domain/entities/user.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({
    Key? key,
    required this.user,
  }) : super(key: key);
  final User user;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Theme.of(context).primaryColor,
      child: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary:  const Color.fromARGB(250, 10, 100, 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          onPressed: () {
            Get.toNamed(
              MobileRoutes.UserForm,
              arguments: [user],
            );
          },
          child: CustomText(
            text: "changeYourInfo".tr,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
