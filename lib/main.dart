import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_market/core/firebase%20data.dart';
import 'package:injectable/injectable.dart';

import 'core/utils/MyBlocObserver.dart';
import 'core/utils/hive_manager.dart';
import 'core/utils/init_app.dart';
import 'core/widgets/app_widget.dart';
import 'features/home/data/datasources/home_local_data_source.dart';
import 'features/home/domain/repositories/i_home_repository.dart';
import 'features/splash/domain/splash_router.dart';
import 'firebase_options.dart';
import 'injection.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  configureDependencies(Environment.prod);
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // addData();
  await getIt<HiveManager>().init();
  // getIt<HomeLocalDataSource>().clear();
  // getIt<SplashRouter>().call();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  BlocOverrides.runZoned(
    () => runApp(AppWidget()),
    blocObserver: MyBlocObserver(),
  );
  // FlutterNativeSplash.remove();
}
