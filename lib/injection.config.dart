// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:awesome_notifications/awesome_notifications.dart' as _i5;
import 'package:cloud_firestore/cloud_firestore.dart' as _i15;
import 'package:firebase_auth/firebase_auth.dart' as _i14;
import 'package:firebase_messaging/firebase_messaging.dart' as _i16;
import 'package:firebase_storage/firebase_storage.dart' as _i17;
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart' as _i11;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i18;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i20;
import 'package:shared_preferences/shared_preferences.dart' as _i30;

import 'core/entities/external_packages_injectable_module.dart' as _i107;
import 'core/firebase/firebase_injectable_module.dart' as _i108;
import 'core/services/hive_manager.dart' as _i19;
import 'core/services/local_notification_service.dart' as _i21;
import 'core/services/network_info_service.dart' as _i22;
import 'core/services/preferences_helper.dart' as _i53;
import 'core/services/remote_notification_service.dart' as _i29;
import 'core/services/theme_service.dart' as _i56;
import 'features/account/data/datasources/account_hive_manager.dart' as _i3;
import 'features/account/data/datasources/account_local_data_source.dart'
    as _i4;
import 'features/account/data/datasources/account_remote_data_source.dart'
    as _i34;
import 'features/account/data/repositories/account_repository.dart' as _i40;
import 'features/account/domain/repositories/i_account_repository.dart' as _i39;
import 'features/account/domain/usecases/add_user_info.dart' as _i66;
import 'features/account/domain/usecases/get_profile_image_url.dart' as _i77;
import 'features/account/domain/usecases/get_user_info.dart' as _i79;
import 'features/account/domain/usecases/update_user_info.dart' as _i60;
import 'features/account/domain/usecases/upload_image_file.dart' as _i61;
import 'features/account/presentation/cubit/get_user_info/get_user_info_cubit.dart'
    as _i80;
import 'features/account/presentation/cubit/user_form/user_form_cubit.dart'
    as _i103;
import 'features/auth/data/datasources/auth_local_data_source.dart' as _i67;
import 'features/auth/data/datasources/auth_remote_data_source.dart' as _i35;
import 'features/auth/data/repositories/auth_repository.dart' as _i82;
import 'features/auth/domain/repositories/i_auth_repository.dart' as _i81;
import 'features/auth/domain/usecases/get_signed_in_user.dart' as _i98;
import 'features/auth/domain/usecases/sign_in_with_facebook.dart' as _i89;
import 'features/auth/domain/usecases/sign_in_with_google.dart' as _i90;
import 'features/auth/domain/usecases/sign_out.dart' as _i91;
import 'features/auth/presentation/cubit/auth_cubit.dart' as _i93;
import 'features/auth/presentation/cubit/sign_in/sign_in_cubit.dart' as _i88;
import 'features/cart/data/datasources/cart_hive_manager.dart' as _i7;
import 'features/cart/data/datasources/cart_local_data_source.dart' as _i8;
import 'features/cart/data/datasources/cart_remote_data_source.dart' as _i36;
import 'features/cart/data/repositories/cart_repository.dart' as _i42;
import 'features/cart/domain/repositories/i_cart_repository.dart' as _i41;
import 'features/cart/domain/usecases/add_cart_item.dart' as _i62;
import 'features/cart/domain/usecases/clear_cart.dart' as _i68;
import 'features/cart/domain/usecases/get_cart_items.dart' as _i72;
import 'features/cart/domain/usecases/remove_cart_item.dart' as _i54;
import 'features/cart/domain/usecases/update_cart.dart' as _i57;
import 'features/cart/domain/usecases/update_cart_item.dart' as _i58;
import 'features/cart/presentation/cubit/cart_actor/cart_actor_cubit.dart'
    as _i94;
import 'features/cart/presentation/cubit/cart_watcher/cart_watcher_cubit.dart'
    as _i95;
import 'features/category/data/datasources/category_hive_manager.dart' as _i9;
import 'features/category/data/datasources/category_local_data_source.dart'
    as _i10;
import 'features/category/data/datasources/category_remote_data_source.dart'
    as _i37;
import 'features/category/data/repositories/category_repository.dart' as _i44;
import 'features/category/domain/repositories/category_repository.dart' as _i43;
import 'features/category/domain/usecases/get_categories.dart' as _i73;
import 'features/category/presentation/cubit/category_cubit.dart' as _i96;
import 'features/favourite/data/datasources/favourite_hive_manager.dart'
    as _i12;
import 'features/favourite/data/datasources/favourite_local_data_source.dart'
    as _i13;
import 'features/favourite/data/datasources/favourite_remote_data_source.dart'
    as _i38;
import 'features/favourite/data/repositories/favourite_repository.dart' as _i46;
import 'features/favourite/domain/repositories/i_favourite_repository.dart'
    as _i45;
import 'features/favourite/domain/usecases/add_favourite_item.dart' as _i63;
import 'features/favourite/domain/usecases/add_item_to_cart.dart' as _i64;
import 'features/favourite/domain/usecases/clear_favourites.dart' as _i69;
import 'features/favourite/domain/usecases/delete_favourite_item.dart' as _i70;
import 'features/favourite/domain/usecases/get_favourite_items.dart' as _i74;
import 'features/favourite/presentation/cubit/favourite_actor/favourite_actor_cubit.dart'
    as _i71;
import 'features/favourite/presentation/cubit/favourite_watcher/favourite_watcher_cubit.dart'
    as _i97;
import 'features/home/presentation/cubit/custom_bottom_nav_cubit.dart' as _i6;
import 'features/onboarding/data/datasources/onboarding_local_data_source.dart'
    as _i84;
import 'features/onboarding/data/repositories/onboarding_repository.dart'
    as _i100;
import 'features/onboarding/domain/repositories/i_onboarding_repository.dart'
    as _i99;
import 'features/onboarding/domain/usecases/get_if_user_time_open_app.dart'
    as _i104;
import 'features/onboarding/domain/usecases/set_user_open_app_before.dart'
    as _i101;
import 'features/orders/data/datasources/order_hive_manager.dart' as _i23;
import 'features/orders/data/datasources/order_local_data_source.dart' as _i24;
import 'features/orders/data/datasources/order_remote_data_source.dart' as _i25;
import 'features/orders/data/repositories/order_repository.dart' as _i48;
import 'features/orders/domain/repositories/i_order_repository.dart' as _i47;
import 'features/orders/domain/usecases/add_order_items.dart' as _i65;
import 'features/orders/domain/usecases/get_orders.dart' as _i75;
import 'features/orders/domain/usecases/update_order_item.dart' as _i59;
import 'features/orders/presentation/cubit/orders_actor/orders_actor_cubit.dart'
    as _i85;
import 'features/orders/presentation/cubit/orders_watcher/orders_watcher_cubit.dart'
    as _i86;
import 'features/product/data/datasources/product_hive_manager.dart' as _i26;
import 'features/product/data/datasources/product_local_data_source.dart'
    as _i27;
import 'features/product/data/datasources/product_remote_data_source.dart'
    as _i28;
import 'features/product/data/repositories/product_repository.dart' as _i50;
import 'features/product/domain/repositories/i_product_repository.dart' as _i49;
import 'features/product/domain/usecases/get_products.dart' as _i76;
import 'features/product/domain/usecases/search_products.dart' as _i55;
import 'features/product/domain/usecases/update_favourite_product.dart'
    as _i102;
import 'features/product/presentation/cubit/product/product_cubit.dart'
    as _i105;
import 'features/product/presentation/search_bloc/search_bloc.dart' as _i87;
import 'features/splash/domain/splash_router.dart' as _i106;
import 'features/subcategory/data/datasources/subcategory_hive_manager.dart'
    as _i31;
import 'features/subcategory/data/datasources/subcategory_local_data_source.dart'
    as _i32;
import 'features/subcategory/data/datasources/subcategory_remote_data_source.dart'
    as _i33;
import 'features/subcategory/data/repositories/subcategory_repository.dart'
    as _i52;
import 'features/subcategory/domain/repositories/i_subcategory_repository.dart'
    as _i51;
import 'features/subcategory/domain/usecases/get_subcategories.dart' as _i78;
import 'features/subcategory/presentation/cubit/subcategory_cubit.dart' as _i92;
import 'localization/localization_service.dart'
    as _i83; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final externalPackagesInjectableModule = _$ExternalPackagesInjectableModule();
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.singleton<_i3.AccountHiveManager>(_i3.AccountHiveManager());
  gh.lazySingleton<_i4.AccountLocalDataSource>(
      () => _i4.AccountLocalDataSourceImpl(get<_i3.AccountHiveManager>()));
  gh.singleton<_i5.AwesomeNotifications>(
      externalPackagesInjectableModule.awesomeNotifications);
  gh.factory<_i6.BottomNavCubit>(() => _i6.BottomNavCubit());
  gh.singleton<_i7.CartHiveManager>(_i7.CartHiveManager());
  gh.lazySingleton<_i8.CartLocalDataSource>(
      () => _i8.CartLocalDataSourceImpl(get<_i7.CartHiveManager>()));
  gh.singleton<_i9.CategoryHiveManager>(_i9.CategoryHiveManager());
  gh.lazySingleton<_i10.CategoryLocalDataSource>(
      () => _i10.CategoryLocalDataSourceImpl(get<_i9.CategoryHiveManager>()));
  gh.factory<_i11.FacebookAuth>(
      () => externalPackagesInjectableModule.facebookAuth);
  gh.singleton<_i12.FavouriteHiveManager>(_i12.FavouriteHiveManager());
  gh.lazySingleton<_i13.FavouriteLocalDataSource>(() =>
      _i13.FavouriteLocalDataSourceImpl(get<_i12.FavouriteHiveManager>()));
  gh.factory<_i14.FirebaseAuth>(() => firebaseInjectableModule.firebaseAuth);
  gh.factory<_i15.FirebaseFirestore>(() => firebaseInjectableModule.firestore);
  gh.factory<_i16.FirebaseMessaging>(() => firebaseInjectableModule.messaging);
  gh.factory<_i17.FirebaseStorage>(() => firebaseInjectableModule.storage);
  gh.factory<_i18.GoogleSignIn>(
      () => externalPackagesInjectableModule.googleSignIn);
  gh.singleton<_i19.HiveManager>(_i19.HiveManager());
  gh.factory<_i20.InternetConnectionChecker>(
      () => externalPackagesInjectableModule.connectionChecker);
  gh.singleton<_i21.LocalNotificationService>(
      _i21.LocalNotificationServiceImpl(get<_i5.AwesomeNotifications>()));
  gh.lazySingleton<_i22.NetworkInfoService>(
      () => _i22.NetworkInfoServiceImpl(get<_i20.InternetConnectionChecker>()));
  gh.singleton<_i23.OrderHiveManager>(_i23.OrderHiveManager());
  gh.lazySingleton<_i24.OrderLocalDataSource>(
      () => _i24.OrderLocalDataSourceImpl(get<_i23.OrderHiveManager>()));
  gh.lazySingleton<_i25.OrderRemoteDataSource>(
      () => _i25.OrderRemoteDataSourceImpl(get<_i15.FirebaseFirestore>()));
  gh.singleton<_i26.ProductHiveManager>(_i26.ProductHiveManager());
  gh.lazySingleton<_i27.ProductLocalDataSource>(
      () => _i27.ProductLocalDataSourceImpl(get<_i26.ProductHiveManager>()));
  gh.lazySingleton<_i28.ProductRemoteDataSource>(
      () => _i28.ProductRemoteDataSourceImpl(get<_i15.FirebaseFirestore>()));
  gh.lazySingleton<_i29.RemoteNotificationService>(() =>
      _i29.RemoteNotificationServiceImpl(
          get<_i16.FirebaseMessaging>(), get<_i21.LocalNotificationService>()));
  await gh.factoryAsync<_i30.SharedPreferences>(
      () => externalPackagesInjectableModule.prefs,
      preResolve: true);
  gh.singleton<_i31.SubcategoryHiveManager>(_i31.SubcategoryHiveManager());
  gh.lazySingleton<_i32.SubcategoryLocalDataSource>(() =>
      _i32.SubcategoryLocalDataSourceImpl(get<_i31.SubcategoryHiveManager>()));
  gh.lazySingleton<_i33.SubcategoryRemoteDataSource>(() =>
      _i33.SubcategoryRemoteDataSourceImpl(get<_i15.FirebaseFirestore>()));
  gh.lazySingleton<_i34.AccountRemoteDataSource>(() =>
      _i34.AccountRemoteDataSourceImpl(get<_i14.FirebaseAuth>(),
          get<_i15.FirebaseFirestore>(), get<_i17.FirebaseStorage>()));
  gh.lazySingleton<_i35.AuthRemoteDataSource>(() =>
      _i35.AuthRemoteDataSourceImpl(get<_i14.FirebaseAuth>(),
          get<_i18.GoogleSignIn>(), get<_i11.FacebookAuth>()));
  gh.lazySingleton<_i36.CartRemoteDataSource>(
      () => _i36.CartRemoteDataSourceImpl(get<_i15.FirebaseFirestore>()));
  gh.lazySingleton<_i37.CategoryRemoteDataSource>(
      () => _i37.CategoryRemoteDataSourceImpl(get<_i15.FirebaseFirestore>()));
  gh.lazySingleton<_i38.FavouriteRemoteDataSource>(
      () => _i38.FavouriteRemoteDataSourceImpl(get<_i15.FirebaseFirestore>()));
  gh.lazySingleton<_i39.IAccountRepository>(() => _i40.AccountRepository(
      get<_i4.AccountLocalDataSource>(),
      get<_i34.AccountRemoteDataSource>(),
      get<_i22.NetworkInfoService>()));
  gh.lazySingleton<_i41.ICartRepository>(() => _i42.CartRepository(
      get<_i8.CartLocalDataSource>(),
      get<_i36.CartRemoteDataSource>(),
      get<_i22.NetworkInfoService>()));
  gh.lazySingleton<_i43.ICategoryRepository>(() => _i44.CategoryRepository(
      get<_i37.CategoryRemoteDataSource>(),
      get<_i10.CategoryLocalDataSource>(),
      get<_i22.NetworkInfoService>()));
  gh.lazySingleton<_i45.IFavouriteRepository>(() => _i46.FavouriteRepository(
      get<_i38.FavouriteRemoteDataSource>(),
      get<_i13.FavouriteLocalDataSource>(),
      get<_i22.NetworkInfoService>()));
  gh.lazySingleton<_i47.IOrderRepository>(() => _i48.OrderRepository(
      get<_i24.OrderLocalDataSource>(),
      get<_i25.OrderRemoteDataSource>(),
      get<_i22.NetworkInfoService>()));
  gh.lazySingleton<_i49.IProductRepository>(() => _i50.ProductRepository(
      get<_i28.ProductRemoteDataSource>(),
      get<_i27.ProductLocalDataSource>(),
      get<_i22.NetworkInfoService>()));
  gh.lazySingleton<_i51.ISubcategoryRepository>(() =>
      _i52.SubcategoryRepository(
          get<_i33.SubcategoryRemoteDataSource>(),
          get<_i32.SubcategoryLocalDataSource>(),
          get<_i22.NetworkInfoService>()));
  gh.lazySingleton<_i53.PreferencesHelper>(
      () => _i53.PreferencesHelper(get<_i30.SharedPreferences>()));
  gh.lazySingleton<_i54.RemoveCartItem>(
      () => _i54.RemoveCartItem(get<_i41.ICartRepository>()));
  gh.lazySingleton<_i55.SearchProducts>(
      () => _i55.SearchProducts(get<_i49.IProductRepository>()));
  gh.lazySingleton<_i56.ThemeService>(
      () => _i56.ThemeServiceImpl(get<_i53.PreferencesHelper>()));
  gh.lazySingleton<_i57.UpdateCart>(
      () => _i57.UpdateCart(get<_i41.ICartRepository>()));
  gh.lazySingleton<_i58.UpdateCartItem>(
      () => _i58.UpdateCartItem(get<_i41.ICartRepository>()));
  gh.lazySingleton<_i59.UpdateOrderItem>(
      () => _i59.UpdateOrderItem(get<_i47.IOrderRepository>()));
  gh.lazySingleton<_i60.UpdateUserInfo>(
      () => _i60.UpdateUserInfo(get<_i39.IAccountRepository>()));
  gh.lazySingleton<_i61.UploadImageFile>(
      () => _i61.UploadImageFile(get<_i39.IAccountRepository>()));
  gh.lazySingleton<_i62.AddCartItem>(
      () => _i62.AddCartItem(get<_i41.ICartRepository>()));
  gh.lazySingleton<_i63.AddFavouriteItem>(
      () => _i63.AddFavouriteItem(get<_i45.IFavouriteRepository>()));
  gh.lazySingleton<_i64.AddItemToCart>(
      () => _i64.AddItemToCart(get<_i62.AddCartItem>()));
  gh.lazySingleton<_i65.AddOrderItems>(
      () => _i65.AddOrderItems(get<_i47.IOrderRepository>()));
  gh.lazySingleton<_i66.AddUserInfo>(
      () => _i66.AddUserInfo(get<_i39.IAccountRepository>()));
  gh.lazySingleton<_i67.AuthLocalDataSource>(() => _i67.AuthLocalDataSourceImpl(
      get<_i53.PreferencesHelper>(), get<_i19.HiveManager>()));
  gh.lazySingleton<_i68.ClearCart>(
      () => _i68.ClearCart(get<_i41.ICartRepository>()));
  gh.lazySingleton<_i69.ClearFavourite>(
      () => _i69.ClearFavourite(get<_i45.IFavouriteRepository>()));
  gh.lazySingleton<_i70.DeleteFavouriteItem>(
      () => _i70.DeleteFavouriteItem(get<_i45.IFavouriteRepository>()));
  gh.factory<_i71.FavouriteActorCubit>(
      () => _i71.FavouriteActorCubit(get<_i70.DeleteFavouriteItem>()));
  gh.lazySingleton<_i72.GetCartItems>(
      () => _i72.GetCartItems(get<_i41.ICartRepository>()));
  gh.lazySingleton<_i73.GetCategories>(
      () => _i73.GetCategories(get<_i43.ICategoryRepository>()));
  gh.lazySingleton<_i74.GetFavouriteItems>(
      () => _i74.GetFavouriteItems(get<_i45.IFavouriteRepository>()));
  gh.lazySingleton<_i75.GetOrders>(
      () => _i75.GetOrders(get<_i47.IOrderRepository>()));
  gh.lazySingleton<_i76.GetProducts>(
      () => _i76.GetProducts(get<_i49.IProductRepository>()));
  gh.lazySingleton<_i77.GetProfileImageURL>(
      () => _i77.GetProfileImageURL(get<_i39.IAccountRepository>()));
  gh.lazySingleton<_i78.GetSubcategories>(
      () => _i78.GetSubcategories(get<_i51.ISubcategoryRepository>()));
  gh.lazySingleton<_i79.GetUserInfo>(
      () => _i79.GetUserInfo(get<_i39.IAccountRepository>()));
  gh.factory<_i80.GetUserInfoCubit>(
      () => _i80.GetUserInfoCubit(get<_i79.GetUserInfo>()));
  gh.lazySingleton<_i81.IAuthRepository>(() => _i82.AuthRepository(
      get<_i35.AuthRemoteDataSource>(),
      get<_i67.AuthLocalDataSource>(),
      get<_i22.NetworkInfoService>()));
  gh.singleton<_i83.LocalizationService>(
      _i83.LocalizationService(get<_i53.PreferencesHelper>()));
  gh.lazySingleton<_i84.OnBoardingLocalDataSource>(
      () => _i84.OnBoardingLocalDataSourceImpl(get<_i53.PreferencesHelper>()));
  gh.factory<_i85.OrdersActorCubit>(
      () => _i85.OrdersActorCubit(get<_i59.UpdateOrderItem>()));
  gh.factory<_i86.OrdersWatcherCubit>(
      () => _i86.OrdersWatcherCubit(get<_i75.GetOrders>()));
  gh.factory<_i87.SearchBloc>(
      () => _i87.SearchBloc(get<_i55.SearchProducts>()));
  gh.factory<_i88.SignInCubit>(
      () => _i88.SignInCubit(get<_i81.IAuthRepository>()));
  gh.lazySingleton<_i89.SignInWithFacebook>(
      () => _i89.SignInWithFacebook(get<_i81.IAuthRepository>()));
  gh.lazySingleton<_i90.SignInWithGoogle>(
      () => _i90.SignInWithGoogle(get<_i81.IAuthRepository>()));
  gh.lazySingleton<_i91.SignOut>(
      () => _i91.SignOut(get<_i81.IAuthRepository>()));
  gh.factory<_i92.SubcategoryCubit>(
      () => _i92.SubcategoryCubit(get<_i78.GetSubcategories>()));
  gh.factory<_i93.AuthCubit>(() => _i93.AuthCubit(get<_i81.IAuthRepository>()));
  gh.factory<_i94.CartActorCubit>(() => _i94.CartActorCubit(
      get<_i62.AddCartItem>(),
      get<_i68.ClearCart>(),
      get<_i65.AddOrderItems>(),
      get<_i54.RemoveCartItem>(),
      get<_i58.UpdateCartItem>()));
  gh.factory<_i95.CartWatcherCubit>(
      () => _i95.CartWatcherCubit(get<_i72.GetCartItems>()));
  gh.factory<_i96.CategoryCubit>(
      () => _i96.CategoryCubit(get<_i73.GetCategories>()));
  gh.factory<_i97.FavouriteWatcherCubit>(
      () => _i97.FavouriteWatcherCubit(get<_i74.GetFavouriteItems>()));
  gh.lazySingleton<_i98.GetSignedInUser>(
      () => _i98.GetSignedInUser(get<_i81.IAuthRepository>()));
  gh.lazySingleton<_i99.IOnBoardingRepository>(
      () => _i100.OnBoardingRepository(get<_i84.OnBoardingLocalDataSource>()));
  gh.lazySingleton<_i101.SetUserOpenAppBefore>(
      () => _i101.SetUserOpenAppBefore(get<_i99.IOnBoardingRepository>()));
  gh.lazySingleton<_i102.UpdateFavouriteProduct>(() =>
      _i102.UpdateFavouriteProduct(
          get<_i63.AddFavouriteItem>(),
          get<_i70.DeleteFavouriteItem>(),
          get<_i49.IProductRepository>(),
          get<_i98.GetSignedInUser>()));
  gh.factory<_i103.UserFormCubit>(() => _i103.UserFormCubit(
      get<_i66.AddUserInfo>(),
      get<_i60.UpdateUserInfo>(),
      get<_i77.GetProfileImageURL>(),
      get<_i61.UploadImageFile>(),
      get<_i98.GetSignedInUser>()));
  gh.lazySingleton<_i104.GetIfUserFirstTimeToOpenApp>(() =>
      _i104.GetIfUserFirstTimeToOpenApp(get<_i99.IOnBoardingRepository>()));
  gh.factory<_i105.ProductCubit>(
      () => _i105.ProductCubit(get<_i102.UpdateFavouriteProduct>()));
  gh.factory<_i106.SplashRouter>(() => _i106.SplashRouter(
      get<_i98.GetSignedInUser>(),
      get<_i104.GetIfUserFirstTimeToOpenApp>(),
      get<_i79.GetUserInfo>()));
  return get;
}

class _$ExternalPackagesInjectableModule
    extends _i107.ExternalPackagesInjectableModule {}

class _$FirebaseInjectableModule extends _i108.FirebaseInjectableModule {}
