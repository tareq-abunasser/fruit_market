import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/utils/size_config.dart';
import '../../../../core/widgets/custom_text_field.dart';
import '../../../../routes/mobile_app_pages.dart';
import 'AccountSettingsCategory.dart';
import 'custom_list_tile_item.dart';

class AccountSettingsListUtils extends StatelessWidget {
  const AccountSettingsListUtils({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const AccountSettingsCategory(
        "Preferences",
      ),
      ListTileItem(
        leadingIcon: Icons.language,
        text: 'Language',
        onTap: () {
          Get.toNamed(MobileRoutes.Language);
        },
        trailing: Row(mainAxisSize: MainAxisSize.min, children: const [
          CustomText(
            text: 'English',
            color: Colors.black54,
            fontSize: 16,
          ),
          SizedBox(width: 10),
          Icon(
            Icons.arrow_forward_ios,
            size: 25,
          ),
        ]),
      ),
      ListTileItem(
        leadingIcon: Icons.dark_mode_outlined,
        text: 'Dark Mode',
        // onTap: () {
        //   Get.toNamed(MobileRoutes.Language);
        // },
        trailing: Switch(
          value: false,
          onChanged: (value) {
          },
        ),
      ),

      const AccountSettingsCategory(
        "Account",
      ),
      ListTileItem(
        leadingIcon: Icons.security,
        text: 'Security',
        onTap: () {
          // Get.toNamed(MobileRoutes.Orders);
        },
      ),
      ListTileItem(
        leadingIcon: Icons.highlight_remove_rounded,
        text: 'Deactivate Account',
        onTap: () {
          // Get.toNamed(MobileRoutes.Orders);
        },
      ),
      ListTileItem(
        leadingIcon: Icons.delete,
        text: 'Delete Account',
        onTap: () {
          // Get.toNamed(MobileRoutes.Orders);
        },
      ),

    ]);
  }
}
