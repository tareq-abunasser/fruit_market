import 'package:another_flushbar/flushbar_helper.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../../../../core/widgets/custom_buttons.dart';
import '../../../../../../core/widgets/space_widget.dart';
import '../../../../../../routes/mobile_app_pages.dart';
import '../../../../core/widgets/saving_in_progress_overlay.dart';
import '../cubit/auth_cubit.dart';
import '../cubit/complete_information_form/complete_info_form_cubit.dart';
import 'complete_information_item.dart';

class CompleteInformationBody extends StatelessWidget {
  CompleteInformationBody({Key? key}) : super(key: key);

  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CompleteInfoFormCubit, CompleteInfoFormState>(
      listenWhen: (p, c) =>
          p.authFailureOrSuccessOption != c.authFailureOrSuccessOption,
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              FlushbarHelper.createError(
                  message: failure.maybeMap(
                      cancelledByUser: (_) => 'Cancelled',
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
          p.isSubmitting != c.isSubmitting ||
          p.showErrorMessages != c.showErrorMessages,
      builder: (context, state) {
        return Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16),
              child: SingleChildScrollView(
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      const VerticalSpace(value: 10),
                      CompleteInfoItem(
                        controller: nameController,
                        onChanged: (name) =>
                            CompleteInfoFormCubit.getInstance(context)
                                .nameChanged(name),
                        validator: (_) {
                          return CompleteInfoFormCubit.getInstance(context)
                              .state
                              .userInfo
                              .fullName
                              .value
                              .fold(
                                (f) => f.maybeMap(
                                  empty: (_) => 'empty name',
                                  orElse: () => null,
                                ),
                                (_) => null,
                              );
                        },
                        text: 'Enter your name',
                      ),
                      const VerticalSpace(value: 2),
                      CompleteInfoItem(
                        controller: phoneController,
                        onChanged: (phone) =>
                            CompleteInfoFormCubit.getInstance(context)
                                .phoneChanged(phone),
                        validator: (_) {
                          return CompleteInfoFormCubit.getInstance(context)
                              .state
                              .userInfo
                              .phoneNumber
                              .value
                              .fold(
                                (f) => f.maybeMap(
                                  invalidPhoneNumber: (_) =>
                                      'this is not a phone number',
                                  orElse: () => null,
                                ),
                                (_) => null,
                              );
                        },
                        text: 'Enter your phone number',
                      ),
                      const VerticalSpace(value: 2),
                      CompleteInfoItem(
                        controller: addressController,
                        onChanged: (address) =>
                            CompleteInfoFormCubit.getInstance(context)
                                .addressChanged(address),
                        validator: (_) {
                          return CompleteInfoFormCubit.getInstance(context)
                              .state
                              .userInfo
                              .address
                              .value
                              .fold(
                                (f) => f.maybeMap(
                                  empty: (_) => 'empty address',
                                  orElse: () => null,
                                ),
                                (_) => null,
                              );
                        },
                        maxLines: 5,
                        text: 'Enter your address',
                      ),
                      const VerticalSpace(value: 5),
                      CustomGeneralButton(
                        text: 'Login',
                        onTap: () {
                          if (formKey.currentState!.validate()) {
                            CompleteInfoFormCubit.getInstance(context)
                                .loginPressed();
                          } else {
                            CompleteInfoFormCubit.getInstance(context)
                                .showErrorMessages();
                          }
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
            SavingInProgressOverlay(
                isSaving: CompleteInfoFormCubit.getInstance(context)
                    .state
                    .isSubmitting)
          ],
        );
      },
    );
  }
}
