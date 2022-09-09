import 'package:another_flushbar/flushbar_helper.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../../../../core/widgets/custom_buttons.dart';
import '../../../../../../core/widgets/space_widget.dart';
import '../../../../../../routes/mobile_app_pages.dart';
import '../../../../core/widgets/saving_in_progress_overlay.dart';
import '../cubit/user_form/user_form_cubit.dart';
import 'complete_information_item.dart';
import 'profile_image_widget.dart';

class UserFormScaffold extends StatelessWidget {
  UserFormScaffold({Key? key}) : super(key: key);

  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  static final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserFormCubit, UserFormState>(
      buildWhen: (p, c) => (p.isEditing != c.isEditing),
      builder: (context, state) {
        if (state.isEditing) {
          if (state.user.fullName.isValid()) {
            nameController.text = state.user.fullName.getOrCrash();
            nameController.selection = TextSelection.fromPosition(
                TextPosition(offset: state.user.fullName.getOrCrash().length));
          }
          if (state.user.phoneNumber.isValid()) {
            phoneController.text =
                state.user.phoneNumber.getOrCrash().toString();
            phoneController.selection = TextSelection.fromPosition(TextPosition(
                offset: state.user.phoneNumber.getOrCrash().toString().length));
          }
          if (state.user.address.isValid()) {
            addressController.text = state.user.address.getOrCrash();
            addressController.selection = TextSelection.fromPosition(
                TextPosition(offset: state.user.address.getOrCrash().length));
          }
        }
        return Scaffold(
          key: scaffoldKey,
          body: BlocBuilder<UserFormCubit, UserFormState>(
            buildWhen: (p, c) => p.showErrorMessages != c.showErrorMessages,
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.all(16),
                child: SingleChildScrollView(
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        const VerticalSpace(value: 5),
                        BlocBuilder<UserFormCubit, UserFormState>(
                          buildWhen: (p, c) => (p.imageFile != c.imageFile),
                          builder: (context, state) {
                            return ProfileImageWidget(
                              imageFile: state.imageFile,
                              imageURL: UserFormCubit.getInstance(context)
                                  .state
                                  .user
                                  .imageURL
                                  .getOrCrash(),
                              icon: Icons.add_a_photo,
                              onTap: () {
                                UserFormCubit.getInstance(context)
                                    .imageChanged();
                              },
                            );
                          },
                        ),
                        const VerticalSpace(value: 5),
                        CompleteInfoItem(
                          inputType: TextInputType.text,
                          controller: nameController,
                          onChanged: (value) {
                            UserFormCubit.getInstance(context)
                                .nameChanged(value);
                          },
                          validator: (_) {
                            return UserFormCubit.getInstance(context)
                                .state
                                .user
                                .fullName
                                .value
                                .fold(
                                  (f) => f.maybeMap(
                                    empty: (_) => 'emptyName'.tr,
                                    orElse: () => null,
                                  ),
                                  (_) => null,
                                );
                          },
                          text: 'fullName'.tr,
                        ),
                        const VerticalSpace(value: 3),
                        CompleteInfoItem(
                          inputType: TextInputType.number,
                          controller: phoneController,
                          onChanged: (phone) {
                            UserFormCubit.getInstance(context)
                                .phoneChanged(phone);
                          },
                          validator: (_) {
                            return UserFormCubit.getInstance(context)
                                .state
                                .user
                                .phoneNumber
                                .value
                                .fold(
                                  (f) => f.maybeMap(
                                    invalidPhoneNumber: (_) =>
                                        'invalidPhoneNumber'.tr,
                                    orElse: () => null,
                                  ),
                                  (_) => null,
                                );
                          },
                          text: 'phoneNumber'.tr,
                        ),
                        const VerticalSpace(value: 3),
                        CompleteInfoItem(
                          inputType: TextInputType.text,
                          controller: addressController,
                          onChanged: (address) {
                            UserFormCubit.getInstance(context)
                                .addressChanged(address);
                          },
                          validator: (_) {
                            return UserFormCubit.getInstance(context)
                                .state
                                .user
                                .address
                                .value
                                .fold(
                                  (f) => f.maybeMap(
                                    empty: (_) => 'emptyAddress'.tr,
                                    orElse: () => null,
                                  ),
                                  (_) => null,
                                );
                          },
                          maxLines: 5,
                          text: 'address'.tr,
                        ),
                        const VerticalSpace(value: 5),
                        CustomGeneralButton(
                          text: 'save'.tr,
                          onTap: () {
                            // formKey.currentState?.save();
                            if (formKey.currentState!.validate()) {
                              UserFormCubit.getInstance(context).savedPressed();
                            } else {
                              UserFormCubit.getInstance(context)
                                  .showErrorMessages();
                            }
                          },
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
// @override
// void dispose() {
//   // Clean up the controller when the widget is removed from the widget tree.
//   // This also removes the _printLatestValue listener.
//   myController.dispose();
//   super.dispose();
// }
}
