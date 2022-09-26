import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../cubit/custom_bottom_nav_cubit.dart';

class CustomBottomNavBarWidget extends StatelessWidget {
  const CustomBottomNavBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavCubit, int>(builder: (context, state) {
      return BottomNavigationBar(
        unselectedFontSize: 12,
        currentIndex: context.read<BottomNavCubit>().state,
        onTap: (index) {
          context.read<BottomNavCubit>().updateIndex(index);
        },
        items: [
          BottomNavigationBarItem(
              icon: const Icon(Icons.home), label: "home".tr),
          BottomNavigationBarItem(
              icon: const Icon(Icons.shopping_cart), label: "shoppingCart".tr),
          BottomNavigationBarItem(
              icon: const Icon(Icons.favorite), label: "favourites".tr),
          BottomNavigationBarItem(
              icon: const Icon(Icons.person), label: 'account'.tr),
        ],
      );
    });
  }
}
