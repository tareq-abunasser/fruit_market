import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_market/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:fruit_market/features/auth/presentation/cubit/get_user_info/get_user_info_cubit.dart';
import 'package:fruit_market/features/auth/presentation/cubit/sign_in/sign_in_cubit.dart';
import 'package:get/get.dart';
import '../../../../injection.dart';
import '../../../../routes/mobile_app_pages.dart';
import '../widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<SignInCubit>()),
        BlocProvider(create: (context) => getIt<GetUserInfoCubit>()),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<SignInCubit, SignInState>(
            listener: (context, state) {
              state.map(
                initial: (_) {},
                loginSuccess: (_) {
                  print("login success");
                  AuthCubit.getInstance(context).authCheckRequested();
                },
                loginFailure: (loginFailure) {
                  FlushbarHelper.createError(
                      message: loginFailure.failure.maybeMap(
                          internet: (_) => 'check your network',
                          serverError: (_) => 'Server error',
                          orElse: () => 'Unknown error')).show(context);
                },
              );
            },
          ),
          BlocListener<AuthCubit, AuthState>(
            listener: (context, state) {
              state.map(
                initial: (_) {},
                authenticated: (_) {
                  print("listent to state");
                  GetUserInfoCubit.getInstance(context).getProfileUserInfoInfo();
                },
                unauthenticated: (_) {
                  Get.offAndToNamed(MobileRoutes.Main);
                },
              );
            },
          ),
          BlocListener<GetUserInfoCubit, GetUserInfoState>(
            listener: (context, state) {
              state.map(
                initial: (_) {},
                getInfoSuccess: (infoSuccess) {
                  print("user info : ");
                  print(infoSuccess.userInfo);
                  Get.offAndToNamed(MobileRoutes.Main);
                },
                getInfoFailure: (infoFailure) {
                  print("user info : ");
                  print(infoFailure.failure);
                  FlushbarHelper.createError(
                      message: infoFailure.failure.maybeMap(
                          internet: (_) => 'check your network',
                          serverError: (_) => 'Server error',
                          orElse: () => 'Unknown error')).show(context);
                }, noInfo: (_) =>Get.offAndToNamed(MobileRoutes.COMPLETE_PROFILE),
              );
            },
          ),
        ],
        child: const Scaffold(
          body: LoginViewBody(),
        ),
      ),

      // child: BlocConsumer<SignInCubit, SignInState>(
      //   listener: (context, state) {
      //     state.map(
      //       initial: (_) {},
      //       loginSuccess: (_) {
      //         Get.toNamed(MobileRoutes.COMPLETE_PROFILE);
      //         AuthCubit.getInstance(context).authCheckRequested();
      //         },
      //       loginFailure: (loginFailure) {
      //         FlushbarHelper.createError(
      //             message: loginFailure.failure.maybeMap(
      //                 internet: (_) => 'check your network',
      //                 serverError: (_) => 'Server error',
      //                 orElse: () => 'Unknown error')).show(context);
      //       },
      //     );
      //   },
      //   builder: (context, state) {
      //     return const Scaffold(
      //       body: LoginViewBody(),
      //     );
      //   },
      // ),
    );
  }
}
