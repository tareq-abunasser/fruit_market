import 'package:flutter/material.dart';
import 'package:fruit_market/features/account/presentation/widgets/account_details.dart';
import 'package:fruit_market/features/account/presentation/widgets/list_utils.dart';

import '../../../../core/constant/constants.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: const [
          Flexible(child: AccountDetails(),flex:1),
          Expanded(child: ListUtils(),flex:2),
        ],
      ),
    );
  }
}
