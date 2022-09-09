import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../localization/localization_service.dart';
import '../widgets/language_card.dart';

class LanguageSettingsPage extends StatelessWidget {
  const LanguageSettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("languageSettings".tr),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: ListView.separated(
          itemCount: LocalizationService.langs.length,
          itemBuilder: (context, index) {
            return LanguageCard(index);
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(height: 10);
          },
        ),
      ),
    );
  }
}
