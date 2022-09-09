import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_market/features/account/presentation/cubit/user_form/user_form_cubit.dart';
import 'package:fruit_market/injection.dart';
import 'package:get/get.dart';
import '../../../../core/services/size_config.dart';
import '../../../../core/widgets/saving_in_progress_overlay.dart';
import '../../../../routes/mobile_app_pages.dart';
import '../../domain/entities/user.dart';
import '../widgets/user_form_scaffold.dart';

class UserFormPage extends StatelessWidget {
  UserFormPage({Key? key}) : super(key: key);
   User? _user;

  @override
  Widget build(BuildContext context) {
    dynamic argumentData = Get.arguments;
    if (argumentData != null) {
      _user = argumentData[0];
    }
    return BlocProvider(
        create: (context) =>
            getIt<UserFormCubit>()..initialized(initialUser: _user),
        child: BlocConsumer<UserFormCubit, UserFormState>(
          listenWhen: (p, c) =>
              p.userFailureOrSuccessOption != c.userFailureOrSuccessOption,
          listener: (context, state) {
            state.userFailureOrSuccessOption.fold(
              () {},
              (either) => either.fold(
                (failure) {
                  FlushbarHelper.createError(
                      message: failure.maybeMap(
                          serverError: (_) => 'Server error',
                          orElse: () => 'Unknown error')).show(context);
                },
                (_) {
                  Get.offAndToNamed(MobileRoutes.Main);
                },
              ),
            );
          },
          buildWhen: (p, c) =>
              p.isSubmitting != c.isSubmitting,
          // ||
          //   p.showErrorMessages != c.showErrorMessages,
          builder: (context, state) {
            return Stack(
              children: <Widget>[
                UserFormScaffold(),
                SavingInProgressOverlay(
                    isSaving: state.isSubmitting),
              ],
            );
          },
        ));
  }
}
