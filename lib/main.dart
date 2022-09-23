import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'core/services/MyBlocObserver.dart';
import 'core/services/hive_manager.dart';
import 'core/services/local_notification_service.dart';
import 'core/services/remote_notification_service.dart';
import 'core/widgets/app_widget.dart';
import 'features/splash/domain/splash_router.dart';
import 'firebase_options.dart';
import 'injection.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  Get.printInfo(info: "function : main");
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  configureDependencies(Environment.prod);
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  Get.printInfo(info: "Firebase initialized");
  await getIt<HiveManager>().init();
  getIt<HiveManager>().clear();
  Get.printInfo(info: "HiveManager initialized all Boxes");
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await getIt<SplashRouter>().call();
  getIt<LocalNotificationService>().init();
  getIt<RemoteNotificationService>().init();
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  BlocOverrides.runZoned(
    () => runApp(AppWidget()),
    blocObserver: MyBlocObserver(),
  );
}

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(
  RemoteMessage message,
) async {
  print("Handling a background message: ${message.messageId}");
  LocalNotificationServiceImpl _localNotificationServiceImpl =
      LocalNotificationServiceImpl(AwesomeNotifications());
  _localNotificationServiceImpl.init();
  _localNotificationServiceImpl.showNotificationFromJsonData(message.data);
  print("Handling a background message2: ${message.messageId}");
  // getIt<LocalNotificationService>().init();
  //
  // getIt<LocalNotificationService>().showNotification(
  //   body: message.notification!.body!,
  //   title: message.notification!.title!,
  //   // payload: message.data as Map<String, String>,
  // );
}
