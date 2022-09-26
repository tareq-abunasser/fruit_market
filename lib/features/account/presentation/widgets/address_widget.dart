import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../../core/widgets/custom_text_field.dart';
import '../../../../injection.dart';
import '../../../../routes/mobile_app_pages.dart';
import '../cubit/get_user_info/get_user_info_cubit.dart';
import 'custom_bottom_sheet.dart';

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
              getInfoSuccess: (success) => Container(
                height: 40,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(250, 10, 100, 10),
                      Color.fromARGB(250, 10, 150, 10),
                    ],
                    stops: [0.5, 1.0],
                  ),
                ),
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      size: 20,
                      color: Colors.white,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          "Deliver to ${success.user.address.getOrCrash()}",
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 5,
                        top: 2,
                      ),
                      child: IconButton(
                          onPressed: () {
                            showModalBottomSheet(
                                context: context,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(20),
                                  ),
                                ),
                                builder: (context) =>
                                    CustomBottomSheet(user: success.user));
                          },
                          icon: const Icon(
                            Icons.arrow_drop_down_outlined,
                            size: 18,
                            color: Colors.white,
                          )),
                    )
                  ],
                ),
              ),
            );
          },
        ));
  }
}
