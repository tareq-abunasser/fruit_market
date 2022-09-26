import 'dart:ui';

import 'package:fruit_market/localization/lang/ar_ae.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/root/internacionalization.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:injectable/injectable.dart';

import '../core/services/preferences_helper.dart';
import 'lang/en_us.dart';

@Singleton()
class LocalizationService extends Translations {
  LocalizationService(this.preferencesHelper);

  late Locale initialLocale = preferencesHelper.isContainsKey(key: prefLang)
      ? _getLocaleFromLanguage(preferencesHelper.getData(key: prefLang))!
      : Get.deviceLocale!;

  final PreferencesHelper preferencesHelper;

  /// key in preferences
  static const String prefLang = "languageCode";

  /// Default locale
  static const locale = Locale('en', 'US');

  /// fallbackLocale saves the day when the locale gets in trouble

  /// Supported languages
  /// Needs to be same order with locales
  static final langs = [
    'English',
    'Arabic',
  ];

  /// Supported locales
  /// Needs to be same order with langs
  static final List<Locale> locales = [
    const Locale('en', 'US'),
    const Locale('ar', 'AE'),
  ];

  /// Keys and their translations
  /// Translations are separated maps in `lang` file
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': enUS,

        /// lang/en_us.dart
        'ar_AE': arAE,

        /// lang/ar_ae.dart
      };

  /// Gets locale from language, and updates the locale
  void changeLocale(String lang) {
    final locale = _getLocaleFromLanguage(lang);
    preferencesHelper.saveData(key: prefLang, data: lang);
    Get.updateLocale(locale!);
  }

  /// Finds language in `langs` list and returns it as Locale
  Locale? _getLocaleFromLanguage(String lang) {
    for (int i = 0; i < langs.length; i++) {
      if (lang == langs[i]) return locales[i];
    }
    return Get.locale;
  }

  String get currentLanguage => langs[locales.indexOf(Get.locale ?? locale)];
}
