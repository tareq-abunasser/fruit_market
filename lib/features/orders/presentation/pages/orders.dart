import 'package:flutter/material.dart';

import '../widgets/order_item.dart';

class Orders extends StatelessWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("My Orders"),
          backgroundColor: Theme.of(context).primaryColor),
      body: ListView.separated(
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return OrderItem(
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
