import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../../core/widgets/custom_text_field.dart';
import '../../../../injection.dart';
import '../../../../routes/mobile_app_pages.dart';
import '../cubit/get_user_info/get_user_info_cubit.dart';

class AddressWidget extends StatelessWidget {
  const AddressWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<GetUserInfoCubit>()..getProfileUserInfo(),
        child: BlocBuilder<GetUserInfoCubit, GetUserInfoState>(
          builder: (context, state) {
            return state.map(
              initial: (_) => Container(),
              getInfoLoadInProgress: (_) => const CircularProgressIndicator(),
              getInfoFailure: (f) {
                return f.failure.maybeMap(
                  serverError: (_) => Text('serverFailure'.tr),
                  orElse: () => Text('unknownFailure'.tr),
                );
              },
              noInfo: (value) => Text('error'.tr),
              getInfoSuccess: (success) => Row(
                children: [
                  const Icon(Icons.location_on),
                  Text(
                    "Deliver to ${success.user.address.getOrCrash()}",
                    overflow: TextOverflow.clip,
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {
                      Get.toNamed(
                        MobileRoutes.UserForm,
                        arguments: [success.user],
                      );
                    },
                    child: CustomText(
                      text: "changeYourInfo".tr,
                      color: const Color(0xff7089F0),
                    ),
                  )
                ],
              ),
            );
          },
        ));
  }
}
