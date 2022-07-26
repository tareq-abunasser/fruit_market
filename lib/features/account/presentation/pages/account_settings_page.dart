import 'package:flutter/material.dart';

import '../widgets/account_settings_list_utils.dart';
import '../widgets/custom_list_tile_item.dart';

class AccountSettingsPage extends StatelessWidget {
  const AccountSettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Settings"),
          backgroundColor: Theme.of(context).primaryColor),
      body: const AccountSettingsListUtils()
    );
  }
}
