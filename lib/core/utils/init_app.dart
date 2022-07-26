import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fruit_market/features/auth/domain/usecases/get_if_user_time_open_app.dart';
import 'package:fruit_market/features/auth/domain/usecases/get_signed_in_user.dart';
import 'package:fruit_market/features/auth/domain/usecases/get_user_info.dart';
import 'package:fruit_market/injection.dart';
import '../../firebase_options.dart';
import 'login_manager.dart';
import 'preferences_manager.dart';


// import 'config.dart';

// /// hive
// // late Box<Product> productsBox;
// // late Box<Category> categoriesBox;
// // final Faker faker = Faker.instance;
// // final GetIt getIt = GetIt.instance;
// // late Box<Customer> customersBox;

Future<void> init() async {
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  // late bool isAuthenticated;
  // print("tareq");
  // getIt<GetSignedInUser>.call().call().then((value) =>
  //     value.fold(() => isAuthenticated = false, (_) => isAuthenticated = true));
  //
  // late bool isFirstTimeOpenApp;
  // getIt<GetIfUserFirstTimeToOpenApp>.call().call().fold((l) =>
  // isFirstTimeOpenApp = false, (r) => isFirstTimeOpenApp = true);
  // SplashRouter(
  //   isAuthenticated: false,
  //   isFirstTimeOpenApp: true,
  //   isProfileCompleted: false,
  // );

  // await Hive.initFlutter();
  // final AuthManager authManager = AuthManager(sharedPreferences);
  // final Box<String> invoicesBox = await Hive.openBox('invoicesBox');
  // createSplashController(authManager.isAuthenticated);
  // createLoginController(authManager);
  // createHomeRepository(authManager);
  // createInvoiceRepository(authManager, invoicesBox);
  // Hive.registerAdapter(CustomerAdapter());
  // customersBox = await Hive.openBox<Customer>('customerBox');
  // createCustomerRepository(authManager, customersBox);

// //   Hive.registerAdapter(ProductAdapter());
// //   productsBox = await Hive.openBox<Product>('productsBox');
// //   categoriesBox = await Hive.openBox<Category>('categoriesBox');
// //   await PreferenceUtils.init();
}

// void createSplashController(bool isAuthenticated) {
//   final SplashRouter splashRouter = SplashRouter(
//       navigatorFactory: navigatorFactory, isAuthenticated: isAuthenticated);
//   final SplashController splashController =
//       SplashController(splashRouter.navigateToNextScreen);
//   Get.put(splashController);
// }

// void createLoginController(AuthManager authManager) {
//   final Uri loginUri = Uri.https(domain, '$mainUrl/api/v2/login');
//   final LoginService loginService = ApiLoginService(http.Client(), loginUri);
//   final LoginRouter loginRouter = LoginRouter(navigatorFactory);
//   final LoginController loginController = LoginController();
//   final LoginUseCaseFactory factory = LoginUseCaseFactory();
//   final LoginUseCase loginUseCase = factory.makeUseCase(
//       authManager: authManager,
//       loginController: loginController,
//       loginRouter: loginRouter,
//       loginService: loginService);
//   loginController.loginService = loginUseCase.login;
//   Get.lazyPut<LoginController>(() => loginController);
// }

// void createHomeRepository(AuthManager authManager) {
//   getIt.registerLazySingleton<HomeRepository>(
//     () {
//       final HomeLocalDataSource localDataSource = HomeLocalDataSource();

//       final HomeRemoteDataSource remoteDataSource =
//           HomeRemoteDataSource(token: authManager.token);

//       final HomeFakerDataSource fakerDataSource = HomeFakerDataSource();

//       return HomeRepository(
//           localDataSource: localDataSource,
//           remoteDataSource: remoteDataSource,
//           fakerDataSource: fakerDataSource);
//     },
//   );
// }

// void createInvoiceRepository(AuthManager authManager, Box<String> invoicesBox) {
//   getIt.registerLazySingleton<InvoiceRepository>(() {
//     final Uri uri = Uri.https(domain, '$mainUrl/api/v2/sales-invoices');

//     final StoreInvoice remote =
//         RemoteStoreInvoice(http.Client(), uri, authManager.token);
//     final StoreInvoice local = LocalStoreInvoice(hiveBox: invoicesBox);

//     return InvoiceRepository(
//       checkInternetConnectivity: checkInternetConnectivity,
//       remote: remote,
//       local: local,
//     );
//   });
// }

// void createCustomerRepository(
//     AuthManager authManager, Box<Customer> hiveBoxCustomer) {
//   final Uri uriCustomer = Uri.https(domain, '$mainUrl/api/v2/customers/');
//   final CustomerController customerController = CustomerController();

//   final CustomerRemoteDataSource remoteCustomer =
//       CustomerRemoteDataSource(http.Client(), uriCustomer, authManager.token);
//   final LocalStoreCustomer localCustomer =
//       LocalStoreCustomer(hiveBox: hiveBoxCustomer);

//   getIt.registerSingleton<RemoteCustomer>(CustomerRepository(
//     checkInternetConnectivity: checkInternetConnectivity,
//     remote: remoteCustomer,
//     local: localCustomer,
//   ));

//   Get.lazyPut<CustomerController>(() => customerController);
// }

Future<bool> checkInternetConnectivity() async {
  final ConnectivityResult connectivityResult =
  await Connectivity().checkConnectivity();
  return connectivityResult == ConnectivityResult.mobile ||
      connectivityResult == ConnectivityResult.wifi;
}
