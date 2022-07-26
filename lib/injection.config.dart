// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i8;
import 'package:firebase_auth/firebase_auth.dart' as _i7;
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i9;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i14;
import 'package:shared_preferences/shared_preferences.dart' as _i16;

import 'core/firebase/firebase_injectable_module.dart' as _i48;
import 'core/utils/hive_manager.dart' as _i10;
import 'core/utils/network_info.dart' as _i15;
import 'core/utils/preferences_manager.dart' as _i24;
import 'features/account/data/datasources/account_remote_data_source.dart'
    as _i17;
import 'features/auth/data/datasources/auth_local_data_source.dart' as _i28;
import 'features/auth/data/datasources/auth_remote_data_source.dart' as _i18;
import 'features/auth/data/repositories/auth_repository.dart' as _i34;
import 'features/auth/domain/repositories/i_auth_repository.dart' as _i33;
import 'features/auth/domain/usecases/complete_user_info.dart' as _i42;
import 'features/auth/domain/usecases/get_if_user_time_open_app.dart' as _i43;
import 'features/auth/domain/usecases/get_signed_in_user.dart' as _i44;
import 'features/auth/domain/usecases/get_user_info.dart' as _i45;
import 'features/auth/domain/usecases/sign_in_with_facebook.dart' as _i36;
import 'features/auth/domain/usecases/sign_in_with_google.dart' as _i37;
import 'features/auth/domain/usecases/sign_out.dart' as _i38;
import 'features/auth/presentation/cubit/auth_cubit.dart' as _i39;
import 'features/auth/presentation/cubit/complete_information_form/complete_info_form_cubit.dart'
    as _i41;
import 'features/auth/presentation/cubit/get_user_info/get_user_info_cubit.dart'
    as _i46;
import 'features/auth/presentation/cubit/sign_in/sign_in_cubit.dart' as _i35;
import 'features/bottom_nav_bar/presentation/cubit/custom_bottom_nav_cubit.dart'
    as _i3;
import 'features/cart/data/datasources/cart_hive_manager.dart' as _i4;
import 'features/cart/data/datasources/cart_local_data_source.dart' as _i5;
import 'features/cart/data/datasources/cart_remote_data_source.dart' as _i19;
import 'features/cart/data/repositories/cart_repository.dart' as _i21;
import 'features/cart/domain/repositories/i_cart_repository.dart' as _i20;
import 'features/cart/domain/usecases/add_cart_item.dart' as _i26;
import 'features/cart/domain/usecases/get_cart_items.dart' as _i31;
import 'features/cart/presentation/cubit/cart_actor/cart_actor_cubit.dart'
    as _i29;
import 'features/cart/presentation/cubit/cart_watcher/cart_watcher_cubit.dart'
    as _i40;
import 'features/home/data/datasources/home_hive_manager.dart' as _i11;
import 'features/home/data/datasources/home_local_data_source.dart' as _i12;
import 'features/home/data/datasources/home_remote_data_source.dart' as _i13;
import 'features/home/data/repositories/home_repository.dart' as _i23;
import 'features/home/domain/repositories/i_home_repository.dart' as _i22;
import 'features/home/domain/usecases/add_cart_item.dart' as _i27;
import 'features/home/presentation/bloc/home_bloc.dart' as _i32;
import 'features/home/presentation/cubit/favourite/favourite_cubit.dart'
    as _i30;
import 'features/home/presentation/cubit/product/product_cubit.dart' as _i25;
import 'features/splash/domain/splash_router.dart'
    as _i47; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.factory<_i3.BottomNavCubit>(() => _i3.BottomNavCubit());
  gh.singleton<_i4.CartHiveManager>(_i4.CartHiveManager());
  gh.lazySingleton<_i5.CartLocalDataSource>(
      () => _i5.CartLocalDataSourceImpl(get<_i4.CartHiveManager>()));
  gh.factory<_i6.FacebookAuth>(() => firebaseInjectableModule.facebookAuth);
  gh.factory<_i7.FirebaseAuth>(() => firebaseInjectableModule.firebaseAuth);
  gh.factory<_i8.FirebaseFirestore>(() => firebaseInjectableModule.firestore);
  gh.factory<_i9.GoogleSignIn>(() => firebaseInjectableModule.googleSignIn);
  gh.singleton<_i10.HiveManager>(_i10.HiveManager());
  gh.singleton<_i11.HomeHiveManager>(_i11.HomeHiveManager());
  gh.lazySingleton<_i12.HomeLocalDataSource>(
      () => _i12.HomeLocalDataSourceImpl(get<_i11.HomeHiveManager>()));
  gh.lazySingleton<_i13.HomeRemoteDataSource>(
      () => _i13.HomeRemoteDataSourceImpl(get<_i8.FirebaseFirestore>()));
  gh.factory<_i14.InternetConnectionChecker>(
      () => firebaseInjectableModule.connectionChecker);
  gh.lazySingleton<_i15.NetworkInfo>(
      () => _i15.NetworkInfoImpl(get<_i14.InternetConnectionChecker>()));
  await gh.factoryAsync<_i16.SharedPreferences>(
      () => firebaseInjectableModule.prefs,
      preResolve: true);
  gh.lazySingleton<_i17.AccountRemoteDataSource>(() =>
      _i17.AccountRemoteDataSourceImpl(
          get<_i7.FirebaseAuth>(), get<_i8.FirebaseFirestore>()));
  gh.lazySingleton<_i18.AuthRemoteDataSource>(() =>
      _i18.AuthRemoteDataSourceImpl(
          get<_i7.FirebaseAuth>(),
          get<_i9.GoogleSignIn>(),
          get<_i6.FacebookAuth>(),
          get<_i8.FirebaseFirestore>()));
  gh.lazySingleton<_i19.CartRemoteDataSource>(
      () => _i19.CartRemoteDataSourceImpl(get<_i8.FirebaseFirestore>()));
  gh.lazySingleton<_i20.ICartRepository>(() => _i21.CartRepository(
      get<_i5.CartLocalDataSource>(),
      get<_i19.CartRemoteDataSource>(),
      get<_i15.NetworkInfo>()));
  gh.lazySingleton<_i22.IHomeRepository>(() => _i23.HomeRepository(
      get<_i13.HomeRemoteDataSource>(),
      get<_i12.HomeLocalDataSource>(),
      get<_i15.NetworkInfo>()));
  gh.lazySingleton<_i24.PreferencesManager>(() => _i24.PreferencesManager(
      sharedPreferences: get<_i16.SharedPreferences>()));
  gh.factory<_i25.ProductCubit>(
      () => _i25.ProductCubit(get<_i22.IHomeRepository>()));
  gh.lazySingleton<_i26.AddCartItem>(
      () => _i26.AddCartItem(get<_i20.ICartRepository>()));
  gh.lazySingleton<_i27.AddCartItem>(
      () => _i27.AddCartItem(get<_i20.ICartRepository>()));
  gh.lazySingleton<_i28.AuthLocalDataSource>(
      () => _i28.AuthLocalDataSourceImpl(get<_i24.PreferencesManager>()));
  gh.factory<_i29.CartActorCubit>(
      () => _i29.CartActorCubit(get<_i26.AddCartItem>()));
  gh.factory<_i30.FavouriteCubit>(
      () => _i30.FavouriteCubit(get<_i22.IHomeRepository>()));
  gh.lazySingleton<_i31.GetCartItems>(
      () => _i31.GetCartItems(get<_i20.ICartRepository>()));
  gh.factory<_i32.HomeBloc>(() => _i32.HomeBloc(get<_i22.IHomeRepository>()));
  gh.lazySingleton<_i33.IAuthRepository>(() => _i34.AuthRepository(
      get<_i18.AuthRemoteDataSource>(),
      get<_i28.AuthLocalDataSource>(),
      get<_i15.NetworkInfo>()));
  gh.factory<_i35.SignInCubit>(
      () => _i35.SignInCubit(get<_i33.IAuthRepository>()));
  gh.lazySingleton<_i36.SignInWithFacebook>(
      () => _i36.SignInWithFacebook(get<_i33.IAuthRepository>()));
  gh.lazySingleton<_i37.SignInWithGoogle>(
      () => _i37.SignInWithGoogle(get<_i33.IAuthRepository>()));
  gh.lazySingleton<_i38.SignOut>(
      () => _i38.SignOut(get<_i33.IAuthRepository>()));
  gh.factory<_i39.AuthCubit>(() => _i39.AuthCubit(get<_i33.IAuthRepository>()));
  gh.factory<_i40.CartWatcherCubit>(
      () => _i40.CartWatcherCubit(get<_i31.GetCartItems>()));
  gh.factory<_i41.CompleteInfoFormCubit>(
      () => _i41.CompleteInfoFormCubit(get<_i33.IAuthRepository>()));
  gh.lazySingleton<_i42.CompleteUserInfo>(
      () => _i42.CompleteUserInfo(get<_i33.IAuthRepository>()));
  gh.lazySingleton<_i43.GetIfUserFirstTimeToOpenApp>(
      () => _i43.GetIfUserFirstTimeToOpenApp(get<_i33.IAuthRepository>()));
  gh.lazySingleton<_i44.GetSignedInUser>(
      () => _i44.GetSignedInUser(get<_i33.IAuthRepository>()));
  gh.lazySingleton<_i45.GetUserInfo>(
      () => _i45.GetUserInfo(get<_i33.IAuthRepository>()));
  gh.factory<_i46.GetUserInfoCubit>(
      () => _i46.GetUserInfoCubit(get<_i33.IAuthRepository>()));
  gh.factory<_i47.SplashRouter>(() => _i47.SplashRouter(
      get<_i44.GetSignedInUser>(),
      get<_i43.GetIfUserFirstTimeToOpenApp>(),
      get<_i45.GetUserInfo>()));
  return get;
}

class _$FirebaseInjectableModule extends _i48.FirebaseInjectableModule {}
