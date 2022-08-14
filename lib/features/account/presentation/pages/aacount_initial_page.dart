import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../../injection.dart';
import '../../../../routes/mobile_app_pages.dart';
import '../cubit/get_user_info/get_user_info_cubit.dart';

class AccountInitialPage extends StatelessWidget {
  const AccountInitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<GetUserInfoCubit>()..getProfileUserInfo(),
      child: BlocListener<GetUserInfoCubit, GetUserInfoState>(
        listener: (context, state) {
          state.map(
            initial: (_) {},
            getInfoSuccess: (infoSuccess) {
              print("user info : ");
              print(infoSuccess.user);
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
            },
            noInfo: (_) => Get.offAndToNamed(MobileRoutes.UserForm),
            getInfoLoadInProgress: (_) {},
          );
        },
        child: Scaffold(
          body: Container(
            child: const Center(child: CircularProgressIndicator()),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
