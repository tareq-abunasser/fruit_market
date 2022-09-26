import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class ExternalPackagesInjectableModule {
  GoogleSignIn get googleSignIn => GoogleSignIn();

  FacebookAuth get facebookAuth => FacebookAuth.instance;

  @Singleton()
  AwesomeNotifications get awesomeNotifications => AwesomeNotifications();

  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();


  InternetConnectionChecker get connectionChecker =>
      InternetConnectionChecker();
}
