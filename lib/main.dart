import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_market/core/firebase%20data.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'core/utils/MyBlocObserver.dart';
import 'core/utils/hive_manager.dart';
import 'core/utils/init_app.dart';
import 'core/widgets/app_widget.dart';
import 'features/splash/domain/splash_router.dart';
import 'firebase_options.dart';
import 'injection.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  configureDependencies(Environment.prod);
  print("main()");
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  print("Firebase initialized");
  // addData();
  await getIt<HiveManager>().init();
  // getIt<HomeLocalDataSource>().clear();
  // getIt<SplashRouter>().call();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // FlutterNativeSplash.remove();
   await getIt<SplashRouter>().call();
  BlocOverrides.runZoned(
    () => runApp(AppWidget()),
    blocObserver: MyBlocObserver(),
  );
}
