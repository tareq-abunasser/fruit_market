import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../../core/constants.dart';
import '../../../../core/services/size_config.dart';
import '../../../../core/widgets/custom_text_field.dart';
import '../../../../injection.dart';
import '../../../../routes/mobile_app_pages.dart';
import '../cubit/get_user_info/get_user_info_cubit.dart';
import 'circle_icon_widget.dart';
import 'profile_image_widget.dart';

class AccountDetails extends StatelessWidget {
  const AccountDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<GetUserInfoCubit>()..getProfileUserInfo(),
      child: BlocBuilder<GetUserInfoCubit, GetUserInfoState>(
        builder: (context, state) {
          return Container(
              width: double.infinity,
              height: SizeConfig.defaultSize! * 30,
              color: Theme.of(context).primaryColor,
              child: state.map(
                initial: (_) => Container(),
                getInfoLoadInProgress: (_) =>
                    const Center(child: CircularProgressIndicator()),
                getInfoFailure: (_) => Center(child: Text('error'.tr)),
                getInfoSuccess: (success) => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ProfileImageWidget(
                      imageURL: success.user.imageURL.getOrCrash(),
                      icon: Icons.edit,
                      onTap: () => Get.toNamed(
                        MobileRoutes.UserForm,
                        arguments: [success.user],
                      ),
                    ),
                    CustomText(
                      text: success.user.fullName.getOrCrash(),
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                    CustomText(
                      text: success.user.email.getOrCrash(),
                      fontSize: 16,
                    ),
                  ],
                ),
                noInfo: (_) => Center(child: Text('noInfo'.tr)),
              ));
        },
      ),
    );
  }
}
