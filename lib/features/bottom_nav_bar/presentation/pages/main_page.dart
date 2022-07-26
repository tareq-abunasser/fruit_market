import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../injection.dart';
import '../../../account/presentation/pages/account_page.dart';
import '../../../cart/presentation/pages/shopping_cart_page.dart';
import '../../../home/presentation/pages/favourite_page.dart';
import '../../../home/presentation/pages/home_page.dart';
import '../cubit/custom_bottom_nav_cubit.dart';
import '../widget/bottom_nav_bar_widget.dart';

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BottomNavCubit>(
        create: (context) => getIt<BottomNavCubit>(),
        child: BlocBuilder<BottomNavCubit, int>(builder: (context, state) {
          return Scaffold(
            body: _pageNavigation.elementAt(state),
            bottomNavigationBar: const CustomBottomNavBarWidget(),
          );
        }));
  }

  final _pageNavigation = [
    const HomePage(),
    const ShoppingCartPage(),
    const FavouritePage(),
    const AccountPage(),
  ];
}
