import 'package:flutter/material.dart';

import '../widgets/favourite_item.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
          title: const Text("Favourites"),
          backgroundColor: Theme.of(context).primaryColor),
      body: ListView.separated(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return FavouriteItem(
            text: "Brocli",
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(
            color: Colors.black38,
            thickness: 1,
          );
        },
      ),
    );
  }
}
