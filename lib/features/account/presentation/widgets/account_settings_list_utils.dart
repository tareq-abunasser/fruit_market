import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/services/size_config.dart';
import '../../../../core/services/theme_service.dart';
import '../../../../core/widgets/custom_text_field.dart';
import '../../../../injection.dart';
import '../../../../localization/localization_service.dart';
import '../../../../routes/mobile_app_pages.dart';
import 'AccountSettingsCategory.dart';
import 'custom_list_tile_item.dart';

class AccountSettingsListUtils extends StatelessWidget {
  const AccountSettingsListUtils({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      AccountSettingsCategory(
        "preferences".tr,
      ),
      ListTileItem(
        leadingIcon: Icons.language,
        text: 'language'.tr,
        onTap: () {
          Get.toNamed(MobileRoutes.Language);
        },
        trailing: Row(mainAxisSize: MainAxisSize.min, children: [
          CustomText(
            text: getIt<LocalizationService>().currentLanguage.tr,
            color: Colors.black54,
            fontSize: 16,
          ),
          const SizedBox(width: 10),
          const Icon(
            Icons.arrow_forward_ios,
            size: 25,
          ),
        ]),
      ),
      ListTileItem(
        leadingIcon: Icons.dark_mode_outlined,
        text: 'darkMode'.tr,
        trailing: StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return Switch(
              value: getIt<ThemeService>().isDarkMode,
              onChanged: (value) {
                setState(() {
                  getIt<ThemeService>().switchTheme();
                });
              },
            );
          },
        ),
      ),
      AccountSettingsCategory(
        "account".tr,
      ),
      ListTileItem(
        leadingIcon: Icons.security,
        text: 'security'.tr,
        onTap: () {},
      ),
      ListTileItem(
        leadingIcon: Icons.highlight_remove_rounded,
        text: 'deactivateAccount'.tr,
        onTap: () {},
      ),
      ListTileItem(
        leadingIcon: Icons.delete,
        text: 'deleteAccount'.tr,
        onTap: () {},
      ),
    ]);
  }
}
