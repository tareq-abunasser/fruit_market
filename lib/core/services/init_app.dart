import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:fruit_market/core/services/size_config.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import '../../features/splash/domain/splash_router.dart';
import '../../firebase_options.dart';
import '../../injection.dart';
import 'hive_manager.dart';
import 'local_notification_service.dart';
import 'remote_notification_service.dart';

Future<void> initApp() async {
  Get.printInfo(info: 'function : initApp');
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  configureDependencies(Environment.prod);
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  Get.printInfo(info: "Firebase initialized");
  await getIt<HiveManager>().init();
  // getIt<HiveManager>().clear();
  Get.printInfo(info: "HiveManager initialized all Boxes");
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await getIt<SplashRouter>().call();
  getIt<LocalNotificationService>().init();
  getIt<RemoteNotificationService>().init();
  FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
}
