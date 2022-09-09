// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i14;
import 'package:firebase_auth/firebase_auth.dart' as _i13;
import 'package:firebase_messaging/firebase_messaging.dart' as _i15;
import 'package:firebase_storage/firebase_storage.dart' as _i16;
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i17;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i19;
import 'package:shared_preferences/shared_preferences.dart' as _i27;

import 'core/firebase/firebase_injectable_module.dart' as _i102;
import 'core/services/hive_manager.dart' as _i18;
import 'core/services/network_info.dart' as _i20;
import 'core/services/preferences_helper.dart' as _i50;
import 'core/services/theme_service.dart' as _i53;
import 'features/account/data/datasources/account_hive_manager.dart' as _i3;
import 'features/account/data/datasources/account_local_data_source.dart'
    as _i4;
import 'features/account/data/datasources/account_remote_data_source.dart'
    as _i31;
import 'features/account/data/repositories/account_repository.dart' as _i37;
import 'features/account/domain/repositories/i_account_repository.dart' as _i36;
import 'features/account/domain/usecases/add_user_info.dart' as _i62;
import 'features/account/domain/usecases/get_profile_image_url.dart' as _i74;
import 'features/account/domain/usecases/get_user_info.dart' as _i76;
import 'features/account/domain/usecases/update_user_info.dart' as _i55;
import 'features/account/domain/usecases/upload_image_file.dart' as _i56;
import 'features/account/presentation/cubit/get_user_info/get_user_info_cubit.dart'
    as _i77;
import 'features/account/presentation/cubit/user_form/user_form_cubit.dart'
    as _i99;
import 'features/auth/data/datasources/auth_local_data_source.dart' as _i63;
import 'features/auth/data/datasources/auth_remote_data_source.dart' as _i32;
import 'features/auth/data/repositories/auth_repository.dart' as _i79;
import 'features/auth/domain/repositories/i_auth_repository.dart' as _i78;
import 'features/auth/domain/usecases/get_signed_in_user.dart' as _i94;
import 'features/auth/domain/usecases/sign_in_with_facebook.dart' as _i85;
import 'features/auth/domain/usecases/sign_in_with_google.dart' as _i86;
import 'features/auth/domain/usecases/sign_out.dart' as _i87;
import 'features/auth/presentation/cubit/auth_cubit.dart' as _i90;
import 'features/auth/presentation/cubit/sign_in/sign_in_cubit.dart' as _i84;
import 'features/cart/data/datasources/cart_hive_manager.dart' as _i6;
import 'features/cart/data/datasources/cart_local_data_source.dart' as _i7;
import 'features/cart/data/datasources/cart_remote_data_source.dart' as _i33;
import 'features/cart/data/repositories/cart_repository.dart' as _i39;
import 'features/cart/domain/repositories/i_cart_repository.dart' as _i38;
import 'features/cart/domain/usecases/add_cart_item.dart' as _i57;
import 'features/cart/domain/usecases/add_orders_item_from_cart.dart' as _i61;
import 'features/cart/domain/usecases/clear_cart.dart' as _i65;
import 'features/cart/domain/usecases/get_cart_items.dart' as _i69;
import 'features/cart/domain/usecases/remove_cart_item.dart' as _i51;
import 'features/cart/domain/usecases/update_cart.dart' as _i54;
import 'features/cart/presentation/cubit/cart/cart_cubit.dart' as _i91;
import 'features/cart/presentation/cubit/cart_actor/cart_actor_cubit.dart'
    as _i64;
import 'features/category/data/datasources/category_hive_manager.dart' as _i8;
import 'features/category/data/datasources/category_local_data_source.dart'
    as _i9;
import 'features/category/data/datasources/category_remote_data_source.dart'
    as _i34;
import 'features/category/data/repositories/category_repository.dart' as _i41;
import 'features/category/domain/repositories/category_repository.dart' as _i40;
import 'features/category/domain/usecases/get_categories.dart' as _i70;
import 'features/category/presentation/cubit/category_cubit.dart' as _i92;
import 'features/favourite/data/datasources/favourite_hive_manager.dart'
    as _i11;
import 'features/favourite/data/datasources/favourite_local_data_source.dart'
    as _i12;
import 'features/favourite/data/datasources/favourite_remote_data_source.dart'
    as _i35;
import 'features/favourite/data/repositories/favourite_repository.dart' as _i43;
import 'features/favourite/domain/repositories/i_favourite_repository.dart'
    as _i42;
import 'features/favourite/domain/usecases/add_favourite_item.dart' as _i58;
import 'features/favourite/domain/usecases/add_item_to_cart.dart' as _i59;
import 'features/favourite/domain/usecases/clear_favourites.dart' as _i66;
import 'features/favourite/domain/usecases/delete_favourite_item.dart' as _i67;
import 'features/favourite/domain/usecases/get_favourite_items.dart' as _i71;
import 'features/favourite/presentation/cubit/favourite_actor/favourite_actor_cubit.dart'
    as _i68;
import 'features/favourite/presentation/cubit/favourite_watcher/favourite_watcher_cubit.dart'
    as _i93;
import 'features/home/presentation/cubit/custom_bottom_nav_cubit.dart' as _i5;
import 'features/onboarding/data/datasources/onboarding_local_data_source.dart'
    as _i81;
import 'features/onboarding/data/repositories/onboarding_repository.dart'
    as _i96;
import 'features/onboarding/domain/repositories/i_onboarding_repository.dart'
    as _i95;
import 'features/onboarding/domain/usecases/get_if_user_time_open_app.dart'
    as _i100;
import 'features/onboarding/domain/usecases/set_user_open_app_before.dart'
    as _i98;
import 'features/orders/data/datasources/order_hive_manager.dart' as _i21;
import 'features/orders/data/datasources/order_local_data_source.dart' as _i22;
import 'features/orders/data/datasources/order_remote_data_source.dart' as _i23;
import 'features/orders/data/repositories/order_repository.dart' as _i45;
import 'features/orders/domain/repositories/i_order_repository.dart' as _i44;
import 'features/orders/domain/usecases/add_order_items.dart' as _i60;
import 'features/orders/domain/usecases/get_orders.dart' as _i72;
import 'features/orders/presentation/cubit/orders_cubit.dart' as _i82;
import 'features/product/data/datasources/product_hive_manager.dart' as _i24;
import 'features/product/data/datasources/product_local_data_source.dart'
    as _i25;
import 'features/product/data/datasources/product_remote_data_source.dart'
    as _i26;
import 'features/product/data/repositories/product_repository.dart' as _i47;
import 'features/product/domain/repositories/i_product_repository.dart' as _i46;
import 'features/product/domain/usecases/get_products.dart' as _i73;
import 'features/product/domain/usecases/search_products.dart' as _i52;
import 'features/product/domain/usecases/update_favourite_product.dart' as _i89;
import 'features/product/presentation/cubit/product/product_cubit.dart' as _i97;
import 'features/product/presentation/search_bloc/search_bloc.dart' as _i83;
import 'features/splash/domain/splash_router.dart' as _i101;
import 'features/subcategory/data/datasources/subcategory_hive_manager.dart'
    as _i28;
import 'features/subcategory/data/datasources/subcategory_local_data_source.dart'
    as _i29;
import 'features/subcategory/data/datasources/subcategory_remote_data_source.dart'
    as _i30;
import 'features/subcategory/data/repositories/subcategory_repository.dart'
    as _i49;
import 'features/subcategory/domain/repositories/i_subcategory_repository.dart'
    as _i48;
import 'features/subcategory/domain/usecases/get_subcategories.dart' as _i75;
import 'features/subcategory/presentation/cubit/subcategory_cubit.dart' as _i88;
import 'localization/localization_service.dart'
    as _i80; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.singleton<_i3.AccountHiveManager>(_i3.AccountHiveManager());
  gh.lazySingleton<_i4.AccountLocalDataSource>(
      () => _i4.AccountLocalDataSourceImpl(get<_i3.AccountHiveManager>()));
  gh.factory<_i5.BottomNavCubit>(() => _i5.BottomNavCubit());
  gh.singleton<_i6.CartHiveManager>(_i6.CartHiveManager());
  gh.lazySingleton<_i7.CartLocalDataSource>(
      () => _i7.CartLocalDataSourceImpl(get<_i6.CartHiveManager>()));
  gh.singleton<_i8.CategoryHiveManager>(_i8.CategoryHiveManager());
  gh.lazySingleton<_i9.CategoryLocalDataSource>(
      () => _i9.CategoryLocalDataSourceImpl(get<_i8.CategoryHiveManager>()));
  gh.factory<_i10.FacebookAuth>(() => firebaseInjectableModule.facebookAuth);
  gh.singleton<_i11.FavouriteHiveManager>(_i11.FavouriteHiveManager());
  gh.lazySingleton<_i12.FavouriteLocalDataSource>(() =>
      _i12.FavouriteLocalDataSourceImpl(get<_i11.FavouriteHiveManager>()));
  gh.factory<_i13.FirebaseAuth>(() => firebaseInjectableModule.firebaseAuth);
  gh.factory<_i14.FirebaseFirestore>(() => firebaseInjectableModule.firestore);
  gh.factory<_i15.FirebaseMessaging>(() => firebaseInjectableModule.messaging);
  gh.factory<_i16.FirebaseStorage>(() => firebaseInjectableModule.storage);
  gh.factory<_i17.GoogleSignIn>(() => firebaseInjectableModule.googleSignIn);
  gh.singleton<_i18.HiveManager>(_i18.HiveManager());
  gh.factory<_i19.InternetConnectionChecker>(
      () => firebaseInjectableModule.connectionChecker);
  gh.lazySingleton<_i20.NetworkInfo>(
      () => _i20.NetworkInfoImpl(get<_i19.InternetConnectionChecker>()));
  gh.singleton<_i21.OrderHiveManager>(_i21.OrderHiveManager());
  gh.lazySingleton<_i22.OrderLocalDataSource>(
      () => _i22.OrderLocalDataSourceImpl(get<_i21.OrderHiveManager>()));
  gh.lazySingleton<_i23.OrderRemoteDataSource>(
      () => _i23.OrderRemoteDataSourceImpl(get<_i14.FirebaseFirestore>()));
  gh.singleton<_i24.ProductHiveManager>(_i24.ProductHiveManager());
  gh.lazySingleton<_i25.ProductLocalDataSource>(
      () => _i25.ProductLocalDataSourceImpl(get<_i24.ProductHiveManager>()));
  gh.lazySingleton<_i26.ProductRemoteDataSource>(
      () => _i26.ProductRemoteDataSourceImpl(get<_i14.FirebaseFirestore>()));
  await gh.factoryAsync<_i27.SharedPreferences>(
      () => firebaseInjectableModule.prefs,
      preResolve: true);
  gh.singleton<_i28.SubcategoryHiveManager>(_i28.SubcategoryHiveManager());
  gh.lazySingleton<_i29.SubcategoryLocalDataSource>(() =>
      _i29.SubcategoryLocalDataSourceImpl(get<_i28.SubcategoryHiveManager>()));
  gh.lazySingleton<_i30.SubcategoryRemoteDataSource>(() =>
      _i30.SubcategoryRemoteDataSourceImpl(get<_i14.FirebaseFirestore>()));
  gh.lazySingleton<_i31.AccountRemoteDataSource>(() =>
      _i31.AccountRemoteDataSourceImpl(get<_i13.FirebaseAuth>(),
          get<_i14.FirebaseFirestore>(), get<_i16.FirebaseStorage>()));
  gh.lazySingleton<_i32.AuthRemoteDataSource>(() =>
      _i32.AuthRemoteDataSourceImpl(get<_i13.FirebaseAuth>(),
          get<_i17.GoogleSignIn>(), get<_i10.FacebookAuth>()));
  gh.lazySingleton<_i33.CartRemoteDataSource>(
      () => _i33.CartRemoteDataSourceImpl(get<_i14.FirebaseFirestore>()));
  gh.lazySingleton<_i34.CategoryRemoteDataSource>(
      () => _i34.CategoryRemoteDataSourceImpl(get<_i14.FirebaseFirestore>()));
  gh.lazySingleton<_i35.FavouriteRemoteDataSource>(
      () => _i35.FavouriteRemoteDataSourceImpl(get<_i14.FirebaseFirestore>()));
  gh.lazySingleton<_i36.IAccountRepository>(() => _i37.AccountRepository(
      get<_i4.AccountLocalDataSource>(),
      get<_i31.AccountRemoteDataSource>(),
      get<_i20.NetworkInfo>()));
  gh.lazySingleton<_i38.ICartRepository>(() => _i39.CartRepository(
      get<_i7.CartLocalDataSource>(),
      get<_i33.CartRemoteDataSource>(),
      get<_i20.NetworkInfo>()));
  gh.lazySingleton<_i40.ICategoryRepository>(() => _i41.CategoryRepository(
      get<_i34.CategoryRemoteDataSource>(),
      get<_i9.CategoryLocalDataSource>(),
      get<_i20.NetworkInfo>()));
  gh.lazySingleton<_i42.IFavouriteRepository>(() => _i43.FavouriteRepository(
      get<_i35.FavouriteRemoteDataSource>(),
      get<_i12.FavouriteLocalDataSource>(),
      get<_i20.NetworkInfo>()));
  gh.lazySingleton<_i44.IOrderRepository>(() => _i45.OrderRepository(
      get<_i22.OrderLocalDataSource>(),
      get<_i23.OrderRemoteDataSource>(),
      get<_i20.NetworkInfo>()));
  gh.lazySingleton<_i46.IProductRepository>(() => _i47.ProductRepository(
      get<_i26.ProductRemoteDataSource>(),
      get<_i25.ProductLocalDataSource>(),
      get<_i20.NetworkInfo>()));
  gh.lazySingleton<_i48.ISubcategoryRepository>(() =>
      _i49.SubcategoryRepository(get<_i30.SubcategoryRemoteDataSource>(),
          get<_i29.SubcategoryLocalDataSource>(), get<_i20.NetworkInfo>()));
  gh.lazySingleton<_i50.PreferencesHelper>(() =>
      _i50.PreferencesHelper(sharedPreferences: get<_i27.SharedPreferences>()));
  gh.lazySingleton<_i51.RemoveCartItem>(
      () => _i51.RemoveCartItem(get<_i38.ICartRepository>()));
  gh.lazySingleton<_i52.SearchProducts>(
      () => _i52.SearchProducts(get<_i46.IProductRepository>()));
  gh.lazySingleton<_i53.ThemeService>(
      () => _i53.ThemeServiceImpl(get<_i50.PreferencesHelper>()));
  gh.lazySingleton<_i54.UpdateCart>(
      () => _i54.UpdateCart(get<_i38.ICartRepository>()));
  gh.lazySingleton<_i55.UpdateUserInfo>(
      () => _i55.UpdateUserInfo(get<_i36.IAccountRepository>()));
  gh.lazySingleton<_i56.UploadImageFile>(
      () => _i56.UploadImageFile(get<_i36.IAccountRepository>()));
  gh.lazySingleton<_i57.AddCartItem>(
      () => _i57.AddCartItem(get<_i38.ICartRepository>()));
  gh.lazySingleton<_i58.AddFavouriteItem>(
      () => _i58.AddFavouriteItem(get<_i42.IFavouriteRepository>()));
  gh.lazySingleton<_i59.AddItemToCart>(
      () => _i59.AddItemToCart(get<_i57.AddCartItem>()));
  gh.lazySingleton<_i60.AddOrderItems>(
      () => _i60.AddOrderItems(get<_i44.IOrderRepository>()));
  gh.lazySingleton<_i61.AddOrderItemsFomCart>(
      () => _i61.AddOrderItemsFomCart(get<_i60.AddOrderItems>()));
  gh.lazySingleton<_i62.AddUserInfo>(
      () => _i62.AddUserInfo(get<_i36.IAccountRepository>()));
  gh.lazySingleton<_i63.AuthLocalDataSource>(() => _i63.AuthLocalDataSourceImpl(
      get<_i50.PreferencesHelper>(), get<_i18.HiveManager>()));
  gh.factory<_i64.CartActorCubit>(
      () => _i64.CartActorCubit(get<_i57.AddCartItem>()));
  gh.lazySingleton<_i65.ClearCart>(
      () => _i65.ClearCart(get<_i38.ICartRepository>()));
  gh.lazySingleton<_i66.ClearFavourite>(
      () => _i66.ClearFavourite(get<_i42.IFavouriteRepository>()));
  gh.lazySingleton<_i67.DeleteFavouriteItem>(
      () => _i67.DeleteFavouriteItem(get<_i42.IFavouriteRepository>()));
  gh.factory<_i68.FavouriteActorCubit>(() => _i68.FavouriteActorCubit(
      get<_i67.DeleteFavouriteItem>(), get<_i59.AddItemToCart>()));
  gh.lazySingleton<_i69.GetCartItems>(
      () => _i69.GetCartItems(get<_i38.ICartRepository>()));
  gh.lazySingleton<_i70.GetCategories>(
      () => _i70.GetCategories(get<_i40.ICategoryRepository>()));
  gh.lazySingleton<_i71.GetFavouriteItems>(
      () => _i71.GetFavouriteItems(get<_i42.IFavouriteRepository>()));
  gh.lazySingleton<_i72.GetOrders>(
      () => _i72.GetOrders(get<_i44.IOrderRepository>()));
  gh.lazySingleton<_i73.GetProducts>(
      () => _i73.GetProducts(get<_i46.IProductRepository>()));
  gh.lazySingleton<_i74.GetProfileImageURL>(
      () => _i74.GetProfileImageURL(get<_i36.IAccountRepository>()));
  gh.lazySingleton<_i75.GetSubcategories>(
      () => _i75.GetSubcategories(get<_i48.ISubcategoryRepository>()));
  gh.lazySingleton<_i76.GetUserInfo>(
      () => _i76.GetUserInfo(get<_i36.IAccountRepository>()));
  gh.factory<_i77.GetUserInfoCubit>(
      () => _i77.GetUserInfoCubit(get<_i76.GetUserInfo>()));
  gh.lazySingleton<_i78.IAuthRepository>(() => _i79.AuthRepository(
      get<_i32.AuthRemoteDataSource>(),
      get<_i63.AuthLocalDataSource>(),
      get<_i20.NetworkInfo>()));
  gh.singleton<_i80.LocalizationService>(
      _i80.LocalizationService(get<_i50.PreferencesHelper>()));
  gh.lazySingleton<_i81.OnBoardingLocalDataSource>(
      () => _i81.OnBoardingLocalDataSourceImpl(get<_i50.PreferencesHelper>()));
  gh.factory<_i82.OrdersCubit>(() => _i82.OrdersCubit(get<_i72.GetOrders>()));
  gh.factory<_i83.SearchBloc>(
      () => _i83.SearchBloc(get<_i52.SearchProducts>()));
  gh.factory<_i84.SignInCubit>(
      () => _i84.SignInCubit(get<_i78.IAuthRepository>()));
  gh.lazySingleton<_i85.SignInWithFacebook>(
      () => _i85.SignInWithFacebook(get<_i78.IAuthRepository>()));
  gh.lazySingleton<_i86.SignInWithGoogle>(
      () => _i86.SignInWithGoogle(get<_i78.IAuthRepository>()));
  gh.lazySingleton<_i87.SignOut>(
      () => _i87.SignOut(get<_i78.IAuthRepository>()));
  gh.factory<_i88.SubcategoryCubit>(
      () => _i88.SubcategoryCubit(get<_i75.GetSubcategories>()));
  gh.lazySingleton<_i89.UpdateFavouriteProduct>(() =>
      _i89.UpdateFavouriteProduct(get<_i58.AddFavouriteItem>(),
          get<_i67.DeleteFavouriteItem>(), get<_i46.IProductRepository>()));
  gh.factory<_i90.AuthCubit>(() => _i90.AuthCubit(get<_i78.IAuthRepository>()));
  gh.factory<_i91.CartCubit>(() => _i91.CartCubit(
      get<_i69.GetCartItems>(),
      get<_i54.UpdateCart>(),
      get<_i51.RemoveCartItem>(),
      get<_i65.ClearCart>(),
      get<_i61.AddOrderItemsFomCart>()));
  gh.factory<_i92.CategoryCubit>(
      () => _i92.CategoryCubit(get<_i70.GetCategories>()));
  gh.factory<_i93.FavouriteWatcherCubit>(
      () => _i93.FavouriteWatcherCubit(get<_i71.GetFavouriteItems>()));
  gh.lazySingleton<_i94.GetSignedInUser>(
      () => _i94.GetSignedInUser(get<_i78.IAuthRepository>()));
  gh.lazySingleton<_i95.IOnBoardingRepository>(
      () => _i96.OnBoardingRepository(get<_i81.OnBoardingLocalDataSource>()));
  gh.factory<_i97.ProductCubit>(
      () => _i97.ProductCubit(get<_i89.UpdateFavouriteProduct>()));
  gh.lazySingleton<_i98.SetUserOpenAppBefore>(
      () => _i98.SetUserOpenAppBefore(get<_i95.IOnBoardingRepository>()));
  gh.factory<_i99.UserFormCubit>(() => _i99.UserFormCubit(
      get<_i62.AddUserInfo>(),
      get<_i55.UpdateUserInfo>(),
      get<_i74.GetProfileImageURL>(),
      get<_i56.UploadImageFile>(),
      get<_i94.GetSignedInUser>()));
  gh.lazySingleton<_i100.GetIfUserFirstTimeToOpenApp>(() =>
      _i100.GetIfUserFirstTimeToOpenApp(get<_i95.IOnBoardingRepository>()));
  gh.factory<_i101.SplashRouter>(() => _i101.SplashRouter(
      get<_i94.GetSignedInUser>(),
      get<_i100.GetIfUserFirstTimeToOpenApp>(),
      get<_i76.GetUserInfo>()));
  return get;
}

class _$FirebaseInjectableModule extends _i102.FirebaseInjectableModule {}
