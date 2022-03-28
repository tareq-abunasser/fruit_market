import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/widgets.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import 'mobile_app_pages.dart';
import 'web_app_pages.dart';


const String initial = kIsWeb ? WebRoutes.SPLASH : MobileRoutes.SPLASH;

final List<GetPage<Widget>> routes = kIsWeb ? webRoutes : mobileRoutes;
