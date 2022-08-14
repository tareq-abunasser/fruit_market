// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i12;
import 'package:firebase_auth/firebase_auth.dart' as _i11;
import 'package:firebase_storage/firebase_storage.dart' as _i13;
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i14;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i19;
import 'package:shared_preferences/shared_preferences.dart' as _i24;

import 'core/firebase/firebase_injectable_module.dart' as _i71;
import 'core/utils/hive_manager.dart' as _i15;
import 'core/utils/network_info.dart' as _i20;
import 'core/utils/preferences_manager.dart' as _i39;
import 'features/account/data/datasources/account_hive_manager.dart' as _i3;
import 'features/account/data/datasources/account_local_data_source.dart'
    as _i4;
import 'features/account/data/datasources/account_remote_data_source.dart'
    as _i25;
import 'features/account/data/repositories/account_repository.dart' as _i30;
import 'features/account/domain/repositories/i_account_repository.dart' as _i29;
import 'features/account/domain/usecases/add_user_info.dart' as _i45;
import 'features/account/domain/usecases/get_profile_image_url.dart' as _i51;
import 'features/account/domain/usecases/get_user_info.dart' as _i52;
import 'features/account/domain/usecases/update_user_info.dart' as _i41;
import 'features/account/domain/usecases/upload_image_file.dart' as _i42;
import 'features/account/presentation/cubit/get_user_info/get_user_info_cubit.dart'
    as _i53;
import 'features/account/presentation/cubit/user_form/user_form_cubit.dart'
    as _i68;
import 'features/auth/data/datasources/auth_local_data_source.dart' as _i46;
import 'features/auth/data/datasources/auth_remote_data_source.dart' as _i26;
import 'features/auth/data/repositories/auth_repository.dart' as _i56;
import 'features/auth/domain/repositories/i_auth_repository.dart' as _i55;
import 'features/auth/domain/usecases/get_signed_in_user.dart' as _i65;
import 'features/auth/domain/usecases/sign_in_with_facebook.dart' as _i59;
import 'features/auth/domain/usecases/sign_in_with_google.dart' as _i60;
import 'features/auth/domain/usecases/sign_out.dart' as _i61;
import 'features/auth/presentation/cubit/auth_cubit.dart' as _i62;
import 'features/auth/presentation/cubit/sign_in/sign_in_cubit.dart' as _i58;
import 'features/bottom_nav_bar/presentation/cubit/custom_bottom_nav_cubit.dart'
    as _i5;
import 'features/cart/data/datasources/cart_hive_manager.dart' as _i6;
import 'features/cart/data/datasources/cart_local_data_source.dart' as _i7;
import 'features/cart/data/datasources/cart_remote_data_source.dart' as _i27;
import 'features/cart/data/repositories/cart_repository.dart' as _i32;
import 'features/cart/domain/repositories/i_cart_repository.dart' as _i31;
import 'features/cart/domain/usecases/add_cart_item.dart' as _i43;
import 'features/cart/domain/usecases/get_cart_items.dart' as _i49;
import 'features/cart/presentation/cubit/cart_actor/cart_actor_cubit.dart'
    as _i47;
import 'features/cart/presentation/cubit/cart_watcher/cart_watcher_cubit.dart'
    as _i63;
import 'features/favourite/data/datasources/favourite_hive_manager.dart' as _i9;
import 'features/favourite/data/datasources/favourite_local_data_source.dart'
    as _i10;
import 'features/favourite/data/datasources/favourite_remote_data_source.dart'
    as _i28;
import 'features/favourite/data/repositories/favourite_repository.dart' as _i34;
import 'features/favourite/domain/repositories/i_favourite_repository.dart'
    as _i33;
import 'features/favourite/domain/usecases/get_favourite_items.dart' as _i50;
import 'features/favourite/presentation/cubit/favourite/favourite_cubit.dart'
    as _i64;
import 'features/home/data/datasources/home_hive_manager.dart' as _i16;
import 'features/home/data/datasources/home_local_data_source.dart' as _i17;
import 'features/home/data/datasources/home_remote_data_source.dart' as _i18;
import 'features/home/data/repositories/home_repository.dart' as _i36;
import 'features/home/domain/repositories/i_home_repository.dart' as _i35;
import 'features/home/domain/usecases/add_cart_item.dart' as _i44;
import 'features/home/presentation/bloc/home_bloc.dart' as _i54;
import 'features/home/presentation/cubit/favourite/favourite_cubit.dart'
    as _i48;
import 'features/home/presentation/cubit/product/product_cubit.dart' as _i40;
import 'features/onboarding/data/datasources/onboarding_local_data_source.dart'
    as _i57;
import 'features/onboarding/data/repositories/onboarding_repository.dart'
    as _i67;
import 'features/onboarding/domain/repositories/i_onboarding_repository.dart'
    as _i66;
import 'features/onboarding/domain/usecases/get_if_user_time_open_app.dart'
    as _i69;
import 'features/orders/data/datasources/order_hive_manager.dart' as _i21;
import 'features/orders/data/datasources/order_local_data_source.dart' as _i22;
import 'features/orders/data/datasources/order_remote_data_source.dart' as _i23;
import 'features/orders/data/repositories/order_repository.dart' as _i38;
import 'features/orders/domain/repositories/i_order_repository.dart' as _i37;
import 'features/splash/domain/splash_router.dart'
    as _i70; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i8.FacebookAuth>(() => firebaseInjectableModule.facebookAuth);
  gh.singleton<_i9.FavouriteHiveManager>(_i9.FavouriteHiveManager());
  gh.lazySingleton<_i10.FavouriteLocalDataSource>(
      () => _i10.FavouriteLocalDataSourceImpl(get<_i9.FavouriteHiveManager>()));
  gh.factory<_i11.FirebaseAuth>(() => firebaseInjectableModule.firebaseAuth);
  gh.factory<_i12.FirebaseFirestore>(() => firebaseInjectableModule.firestore);
  gh.factory<_i13.FirebaseStorage>(() => firebaseInjectableModule.storage);
  gh.factory<_i14.GoogleSignIn>(() => firebaseInjectableModule.googleSignIn);
  gh.singleton<_i15.HiveManager>(_i15.HiveManager());
  gh.singleton<_i16.HomeHiveManager>(_i16.HomeHiveManager());
  gh.lazySingleton<_i17.HomeLocalDataSource>(
      () => _i17.HomeLocalDataSourceImpl(get<_i16.HomeHiveManager>()));
  gh.lazySingleton<_i18.HomeRemoteDataSource>(
      () => _i18.HomeRemoteDataSourceImpl(get<_i12.FirebaseFirestore>()));
  gh.factory<_i19.InternetConnectionChecker>(
      () => firebaseInjectableModule.connectionChecker);
  gh.lazySingleton<_i20.NetworkInfo>(
      () => _i20.NetworkInfoImpl(get<_i19.InternetConnectionChecker>()));
  gh.singleton<_i21.OrderHiveManager>(_i21.OrderHiveManager());
  gh.lazySingleton<_i22.OrderLocalDataSource>(
      () => _i22.OrderLocalDataSourceImpl(get<_i21.OrderHiveManager>()));
  gh.lazySingleton<_i23.OrderRemoteDataSource>(
      () => _i23.OrderRemoteDataSourceImpl(get<_i12.FirebaseFirestore>()));
  await gh.factoryAsync<_i24.SharedPreferences>(
      () => firebaseInjectableModule.prefs,
      preResolve: true);
  gh.lazySingleton<_i25.AccountRemoteDataSource>(() =>
      _i25.AccountRemoteDataSourceImpl(get<_i11.FirebaseAuth>(),
          get<_i12.FirebaseFirestore>(), get<_i13.FirebaseStorage>()));
  gh.lazySingleton<_i26.AuthRemoteDataSource>(() =>
      _i26.AuthRemoteDataSourceImpl(
          get<_i11.FirebaseAuth>(),
          get<_i14.GoogleSignIn>(),
          get<_i8.FacebookAuth>(),
          get<_i12.FirebaseFirestore>()));
  gh.lazySingleton<_i27.CartRemoteDataSource>(
      () => _i27.CartRemoteDataSourceImpl(get<_i12.FirebaseFirestore>()));
  gh.lazySingleton<_i28.FavouriteRemoteDataSource>(
      () => _i28.FavouriteRemoteDataSourceImpl(get<_i12.FirebaseFirestore>()));
  gh.lazySingleton<_i29.IAccountRepository>(() => _i30.AccountRepository(
      get<_i4.AccountLocalDataSource>(),
      get<_i25.AccountRemoteDataSource>(),
      get<_i20.NetworkInfo>()));
  gh.lazySingleton<_i31.ICartRepository>(() => _i32.CartRepository(
      get<_i7.CartLocalDataSource>(),
      get<_i27.CartRemoteDataSource>(),
      get<_i20.NetworkInfo>()));
  gh.lazySingleton<_i33.IFavouriteRepository>(() => _i34.FavouriteRepository(
      get<_i28.FavouriteRemoteDataSource>(),
      get<_i10.FavouriteLocalDataSource>(),
      get<_i20.NetworkInfo>()));
  gh.lazySingleton<_i35.IHomeRepository>(() => _i36.HomeRepository(
      get<_i18.HomeRemoteDataSource>(),
      get<_i17.HomeLocalDataSource>(),
      get<_i20.NetworkInfo>()));
  gh.lazySingleton<_i37.IOrderRepository>(() => _i38.OrderRepository(
      get<_i22.OrderLocalDataSource>(),
      get<_i23.OrderRemoteDataSource>(),
      get<_i20.NetworkInfo>()));
  gh.lazySingleton<_i39.PreferencesManager>(() => _i39.PreferencesManager(
      sharedPreferences: get<_i24.SharedPreferences>()));
  gh.factory<_i40.ProductCubit>(
      () => _i40.ProductCubit(get<_i35.IHomeRepository>()));
  gh.lazySingleton<_i41.UpdateUserInfo>(
      () => _i41.UpdateUserInfo(get<_i29.IAccountRepository>()));
  gh.lazySingleton<_i42.UploadImageFile>(
      () => _i42.UploadImageFile(get<_i29.IAccountRepository>()));
  gh.lazySingleton<_i43.AddCartItem>(
      () => _i43.AddCartItem(get<_i31.ICartRepository>()));
  gh.lazySingleton<_i44.AddCartItem>(
      () => _i44.AddCartItem(get<_i31.ICartRepository>()));
  gh.lazySingleton<_i45.AddUserInfo>(
      () => _i45.AddUserInfo(get<_i29.IAccountRepository>()));
  gh.lazySingleton<_i46.AuthLocalDataSource>(() => _i46.AuthLocalDataSourceImpl(
      get<_i39.PreferencesManager>(), get<_i15.HiveManager>()));
  gh.factory<_i47.CartActorCubit>(
      () => _i47.CartActorCubit(get<_i43.AddCartItem>()));
  gh.factory<_i48.FavouriteCubit>(
      () => _i48.FavouriteCubit(get<_i35.IHomeRepository>()));
  gh.lazySingleton<_i49.GetCartItems>(
      () => _i49.GetCartItems(get<_i31.ICartRepository>()));
  gh.lazySingleton<_i50.GetFavouriteItems>(
      () => _i50.GetFavouriteItems(get<_i33.IFavouriteRepository>()));
  gh.lazySingleton<_i51.GetProfileImageURL>(
      () => _i51.GetProfileImageURL(get<_i29.IAccountRepository>()));
  gh.lazySingleton<_i52.GetUserInfo>(
      () => _i52.GetUserInfo(get<_i29.IAccountRepository>()));
  gh.factory<_i53.GetUserInfoCubit>(
      () => _i53.GetUserInfoCubit(get<_i52.GetUserInfo>()));
  gh.factory<_i54.HomeBloc>(() => _i54.HomeBloc(get<_i35.IHomeRepository>()));
  gh.lazySingleton<_i55.IAuthRepository>(() => _i56.AuthRepository(
      get<_i26.AuthRemoteDataSource>(),
      get<_i46.AuthLocalDataSource>(),
      get<_i20.NetworkInfo>()));
  gh.lazySingleton<_i57.OnBoardingLocalDataSource>(
      () => _i57.OnBoardingLocalDataSourceImpl(get<_i39.PreferencesManager>()));
  gh.factory<_i58.SignInCubit>(
      () => _i58.SignInCubit(get<_i55.IAuthRepository>()));
  gh.lazySingleton<_i59.SignInWithFacebook>(
      () => _i59.SignInWithFacebook(get<_i55.IAuthRepository>()));
  gh.lazySingleton<_i60.SignInWithGoogle>(
      () => _i60.SignInWithGoogle(get<_i55.IAuthRepository>()));
  gh.lazySingleton<_i61.SignOut>(
      () => _i61.SignOut(get<_i55.IAuthRepository>()));
  gh.factory<_i62.AuthCubit>(() => _i62.AuthCubit(get<_i55.IAuthRepository>()));
  gh.factory<_i63.CartWatcherCubit>(
      () => _i63.CartWatcherCubit(get<_i49.GetCartItems>()));
  gh.factory<_i64.FavouriteCubit>(
      () => _i64.FavouriteCubit(get<_i50.GetFavouriteItems>()));
  gh.lazySingleton<_i65.GetSignedInUser>(
      () => _i65.GetSignedInUser(get<_i55.IAuthRepository>()));
  gh.lazySingleton<_i66.IOnBoardingRepository>(
      () => _i67.OnBoardingRepository(get<_i57.OnBoardingLocalDataSource>()));
  gh.factory<_i68.UserFormCubit>(() => _i68.UserFormCubit(
      get<_i45.AddUserInfo>(),
      get<_i41.UpdateUserInfo>(),
      get<_i51.GetProfileImageURL>(),
      get<_i42.UploadImageFile>(),
      get<_i65.GetSignedInUser>()));
  gh.lazySingleton<_i69.GetIfUserFirstTimeToOpenApp>(() =>
      _i69.GetIfUserFirstTimeToOpenApp(get<_i66.IOnBoardingRepository>()));
  gh.factory<_i70.SplashRouter>(() => _i70.SplashRouter(
      get<_i65.GetSignedInUser>(),
      get<_i69.GetIfUserFirstTimeToOpenApp>(),
      get<_i52.GetUserInfo>()));
  return get;
}

class _$FirebaseInjectableModule extends _i71.FirebaseInjectableModule {}
