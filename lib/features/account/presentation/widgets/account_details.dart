import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../../core/constants.dart';
import '../../../../core/utils/size_config.dart';
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
              color: kMainColor,
              child: state.map(
                initial: (_) => Container(),
                getInfoLoadInProgress: (_) =>
                    const Center(child: CircularProgressIndicator()),
                getInfoFailure: (_) => const Center(child: Text('Error')),
                getInfoSuccess: (success) => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ProfileImageWidget(
                      imageURL: success.user.imageURL.getOrCrash(),
                      icon: Icons.edit,
                      onTap: ()=> Get.toNamed(
                        MobileRoutes.UserForm,
                        arguments: [success.user],
                      ),
                    ),
                    // InkWell(
                    //   onTap: () {
                    //     Get.toNamed(
                    //       MobileRoutes.UserForm,
                    //       arguments: [success.user],
                    //     );
                    //   },
                    //   child: Stack(
                    //     children: [
                    //       ClipOval(
                    //         child: CachedNetworkImage(
                    //           fit: BoxFit.cover,
                    //           imageUrl: success.user.imageURL.getOrCrash(),
                    //           progressIndicatorBuilder:
                    //               (context, url, downloadProgress) =>
                    //                   CircularProgressIndicator(
                    //                       value: downloadProgress.progress),
                    //           errorWidget: (context, url, error) =>
                    //               const Icon(Icons.error),
                    //           width: SizeConfig.defaultSize! * 12,
                    //           height: SizeConfig.defaultSize! * 12,
                    //         ),
                    //         // radius: SizeConfig.defaultSize! * 6,
                    //       ),
                    //       const Positioned(
                    //         bottom: 0,
                    //         right: 0,
                    //         child: CircleIconWidget(
                    //           color: Colors.white,
                    //           edge: 0.5,
                    //           child: CircleIconWidget(
                    //             color: Colors.black,
                    //             edge: 8,
                    //             child: Icon(
                    //               Icons.edit,
                    //               color: kMainColor,
                    //               size: 23,
                    //             ),
                    //           ),
                    //         ),
                    //         // ClipOval(
                    //         //     child: Container(
                    //         //   child: const Icon(
                    //         //     Icons.edit,
                    //         //     color: Colors.white,
                    //         //     size: 30,
                    //         //   ),
                    //         //   padding: const EdgeInsets.all(8),
                    //         //   color: Colors.black,
                    //         // )),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    CustomText(
                      text: success.user.fullName.getOrCrash(),
                      fontSize: 16,
                      color: kDividerColor,
                      fontWeight: FontWeight.w700,
                    ),
                    CustomText(
                      text: success.user.email.getOrCrash(),
                      fontSize: 16,
                      color: Theme.of(context).dividerColor,
                    ),
                  ],
                ),
                noInfo: (_) => const Center(child: Text('No info')),
              ));
        },
      ),
    );
  }
}
