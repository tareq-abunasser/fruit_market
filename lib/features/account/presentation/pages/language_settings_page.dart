import 'package:flutter/material.dart';

class LanguageSettingsPage extends StatelessWidget {
  const LanguageSettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Language Settings"),
          backgroundColor: Theme.of(context).primaryColor),
      body: Text("Language"),
    );
  }
}
