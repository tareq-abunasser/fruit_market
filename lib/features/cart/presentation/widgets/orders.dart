import 'package:flutter/material.dart';

import 'order_item.dart';

class Orders extends StatelessWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("My Orders"),
          centerTitle: true,
          backgroundColor: Colors.green),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return OrderItem(
            text: "Brocli",
          );
        },
        // Important: Remove any padding from the ListView.

        padding: EdgeInsets.zero,
      ),
    );
  }
}
