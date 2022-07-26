import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/custom_bottom_nav_cubit.dart';

class CustomBottomNavBarWidget extends StatelessWidget {
  const CustomBottomNavBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavCubit,int>(
      builder: (context,state) {
        return BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          backgroundColor: Colors.white38,
          selectedItemColor: Theme.of(context).primaryColor,
          unselectedFontSize: 12,
          unselectedItemColor: Colors.black,
          unselectedLabelStyle: const TextStyle(color: Colors.black),
          showUnselectedLabels: true,
          currentIndex: context.read<BottomNavCubit>().state,
          onTap: (index) {
            context.read<BottomNavCubit>().updateIndex(index);
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "HOME"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: "Shopping cart"),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favourite"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'My Account'),
          ],
        );
      }
    );
  }
}
