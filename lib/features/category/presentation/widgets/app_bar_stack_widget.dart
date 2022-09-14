import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/services/size_config.dart';
import '../../../../routes/mobile_app_pages.dart';

class AppBarStackWidget extends StatelessWidget {
  const AppBarStackWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(clipBehavior: Clip.none, children: [
      Container(
        height: SizeConfig.defaultSize! * 14,
        color: Theme.of(context).primaryColor,
        padding: const EdgeInsetsDirectional.only(start: 30, end: 30),
        child: Row(
          children: [
            Text(
              "marketName".tr,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            const Spacer(),
              Icon(
              color: Colors.white,
              Icons.notifications,
            ),
          ],
        ),
      ),
      Positioned(
        bottom: SizeConfig.defaultSize! * 8,
        left: SizeConfig.defaultSize! * 3,
        right: SizeConfig.defaultSize! * 3,
        child: GestureDetector(
          onTap: () {
            Get.toNamed(MobileRoutes.Search);
          },
          child: Container(
              height: SizeConfig.defaultSize! * 5.6,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: TextField(
                enabled: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.black, width: 1.0),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  hintStyle: const TextStyle(color: Colors.black54),
                  hintText: 'search'.tr,
                  prefixIcon: const Icon(Icons.search, color: Colors.black),
                ),
              )),
        ),
      ),
    ]);
  }
}
