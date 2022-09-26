import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_market/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:fruit_market/features/auth/presentation/cubit/sign_in/sign_in_cubit.dart';
import 'package:get/get.dart';
import '../../../../core/services/size_config.dart';
import '../../../../injection.dart';
import '../../../../routes/mobile_app_pages.dart';
import '../../../splash/domain/splash_router.dart';
import '../widgets/login_view_body.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<SignInCubit>()),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<SignInCubit, SignInState>(
            listener: (context, state) {
              state.map(
                initial: (_) {},
                loginSuccess: (_) async {
                  printInfo(info: "login success");
                  await getIt<SplashRouter>().call();
                  String page = SplashRouter.initialRoute;
                  Get.offAndToNamed(page);
                },
                loginFailure: (loginFailure) {
                  FlushbarHelper.createError(
                      message: loginFailure.failure.maybeMap(
                          internet: (_) => 'checkInternetConnectivity'.tr,
                          serverError: (_) => 'serverError'.tr,
                          orElse: () => "unknownError".tr)).show(context);
                },
              );
            },
          ),
        ],
        child: const Scaffold(
          body: LoginViewBody(),
        ),
      ),
    );
  }
}
