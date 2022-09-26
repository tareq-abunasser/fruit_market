import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'core/services/MyBlocObserver.dart';
import 'core/services/init_app.dart';
import 'core/widgets/app_widget.dart';

void main() async {
  Get.printInfo(info: "function : main");
  await initApp();
  BlocOverrides.runZoned(
    () => runApp(AppWidget()),
    blocObserver: MyBlocObserver(),
  );
}


