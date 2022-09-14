import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'core/services/MyBlocObserver.dart';
import 'core/services/hive_manager.dart';
import 'core/services/init_app.dart';
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
  Get.printInfo(info: "HiveManager initialized all Boxes");
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await getIt<SplashRouter>().call();
  BlocOverrides.runZoned(
    () => runApp(AppWidget()),
    blocObserver: MyBlocObserver(),
  );
}
