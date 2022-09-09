import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_market/features/account/presentation/widgets/custom_list_tile_item.dart';
import 'package:fruit_market/routes/mobile_app_pages.dart';
import 'package:get/get.dart';

import '../../../auth/presentation/cubit/auth_cubit.dart';

class ListUtils extends StatelessWidget {
  const ListUtils({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
          state.mapOrNull(
            unauthenticated: (_) {
              Get.offAndToNamed(MobileRoutes.LOGIN);
            },
          );
      },
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ListTileItem(
              leadingIcon: Icons.local_grocery_store_rounded,
              text: 'myOrders'.tr,
              onTap: () {
                Get.toNamed(MobileRoutes.Orders);
              },
            ),
            ListTileItem(
              leadingIcon: Icons.favorite,
              text: 'favourites'.tr,
              onTap: () {
                Get.toNamed(MobileRoutes.Favourite);
              },
            ),
            ListTileItem(
              leadingIcon: Icons.settings,
              text: 'settings'.tr,
              onTap: () {
                Get.toNamed(MobileRoutes.ACCOUNT_SETTINGS);
              },
            ),
            ListTileItem(
              leadingIcon: Icons.local_grocery_store_rounded,
              text: 'myCart'.tr,
              onTap: () {
                Get.toNamed(MobileRoutes.Cart);
              },
            ),
            ListTileItem(
              leadingIcon: Icons.star_rate,
              text: 'rateUs'.tr,
              onTap: () {},
            ),
            ListTileItem(
              leadingIcon: Icons.share,
              text: 'referAFriend'.tr,
              onTap: () {},
            ),
            ListTileItem(
              leadingIcon: Icons.help,
              text: 'help'.tr,
              onTap: () {
                Get.toNamed(MobileRoutes.HELP);
              },
            ),
            ListTileItem(
              leadingIcon: Icons.logout,
              text: 'logout'.tr,
              onTap: () {
                  context.read<AuthCubit>().signedOut();
              },
            ),
          ],
        ),
      ),
    );
  }
}
