import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruit_market/core/widgets/custom_text_field.dart';
import 'package:get/get.dart';

import '../../../../core/services/size_config.dart';
import '../../../../injection.dart';
import '../../../../localization/localization_service.dart';

class LanguageCard extends StatelessWidget {
  const LanguageCard(this.langIndex, {Key? key}) : super(key: key);
  final int langIndex;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        getIt<LocalizationService>()
            .changeLocale(LocalizationService.langs[langIndex]);
      },
      child: Card(
        // elevation: 0,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 15.0, vertical: 10.0),
                child: Flag.fromString(
                  LocalizationService.locales[langIndex].countryCode ?? 'ps',
                  height: 50,
                  width: 50,
                  fit: BoxFit.fill,
                  flagSize: FlagSize.size_1x1,
                  borderRadius: 25,
                ),
              ),
              Expanded(
                  child: Align(
                      alignment: AlignmentDirectional.center,
                      child: CustomText(
                        text: LocalizationService.langs[langIndex].tr,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ))),
            ],
          )),
    );
  }
}
