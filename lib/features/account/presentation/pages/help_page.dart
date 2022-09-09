import 'package:faker_dart/faker_dart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('help'.tr),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(Faker.instance.lorem.paragraph()),
      ),
    );
  }
}
