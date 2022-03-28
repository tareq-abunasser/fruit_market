// import 'package:flutter_test/flutter_test.dart';
// import 'package:fruit_ecommerce/features/splash/presentation/splash_router.old.dart';
// import 'package:fruit_ecommerce/routes/mobile_app_pages.dart';
// import 'package:get/get.dart';

// import '../../../core/utils/navigator/navigator_factory_spy.dart';
// import '../../../core/utils/navigator/navigator_shared_helper.dart';

// void main() {
//   setUp(() {

//   });

//   group('navigateToNextScreen ', () {
//     final NavigatorFactorySpy navigatorFactory = NavigatorFactorySpy();

//     test(
//         'navigateToNextScreen should navigate to complete profile page when isNewUser false and isAuthenticated true ',
//         () {
//       const bool isAuthenticated = false;
//       const bool isFirstTimeOpenApp = true;
//       const bool isNewUser = false;

//       final SplashRouter sut = SplashRouter(
//         navigatorFactory:navigatorFactory,
//         isAuthenticated: isAuthenticated,
//         isFirstTimeOpenApp: isFirstTimeOpenApp,
//         isNewUser: isNewUser,
//       );

//       sut.navigateToNextScreen();
//       final Route expectedRoute = Route(type: NavigationType.offAndToNamed, name: MobileRoutes.HOME);
//       expectRoutes(navigatorFactory.capturedRoutes, <Route>[expectedRoute]);

//     });

//     test(
//         'navigateToNextScreen should navigate to complete profile page when isNewUser true and isAuthenticated true ',
//         () {
          
//       const bool isAuthenticated = false;
//       const bool isFirstTimeOpenApp = true;
//       const bool isNewUser = true;

//       final SplashRouter sut = SplashRouter(
//         navigatorFactory:navigatorFactory,
//         isAuthenticated: isAuthenticated,
//         isFirstTimeOpenApp: isFirstTimeOpenApp,
//         isNewUser: isNewUser,
//       );

//       sut.navigateToNextScreen();

//       final Route expectedRoute = Route(type: NavigationType.offAndToNamed, name: MobileRoutes.HOME);
//       expectRoutes(navigatorFactory.capturedRoutes, <Route>[expectedRoute]);

//     });

//     test(
//         'navigateToNextScreen should navigate to onBoarding page when isFirstTimeOpenApp true',
//         () {
//       const bool isAuthenticated = false;
//       const bool isFirstTimeOpenApp = true;
//       const bool isNewUser = false;
//       final SplashRouter sut = SplashRouter(
//         navigatorFactory:navigatorFactory,
//         isAuthenticated: isAuthenticated,
//         isFirstTimeOpenApp: isFirstTimeOpenApp,
//         isNewUser: isNewUser,
//       );

//       sut.navigateToNextScreen();

//       const expectedRoute = MobileRoutes.LOGIN;
//       expect(
//         Get.currentRoute,
//         expectedRoute,
//       );
//     });
//     test(
//         'navigateToNextScreen should navigate to login page when isAuthenticated false and isFirstTimeOpenApp false',
//         () {
//       const bool isAuthenticated = false;
//       const bool isFirstTimeOpenApp = false;
//       const bool isNewUser = false;

//       final SplashRouter sut = SplashRouter(
//        navigatorFactory:navigatorFactory,
//         isAuthenticated: isAuthenticated,
//         isFirstTimeOpenApp: isFirstTimeOpenApp,
//         isNewUser: isNewUser,

//       );

//       sut.navigateToNextScreen();

//       const expectedRoute = MobileRoutes.LOGIN;
//       expect(
//         Get.currentRoute,
//         expectedRoute,
//       );
//     });
//   });
// }
