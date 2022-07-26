import 'package:flutter/material.dart';

import '../../../../core/constants.dart';
import '../../../../core/utils/size_config.dart';
import '../../../../core/widgets/custom_text_field.dart';

class AccountDetails extends StatelessWidget {
  const AccountDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: SizeConfig.defaultSize! * 25,
      color: kMainColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            child: Icon(Icons.person),
            radius: SizeConfig.defaultSize! * 5,
          ),
          const CustomText(
            text: "tareq abu nasser",
            fontSize: 16,
            color: kDividerColor,
            fontWeight: FontWeight.w700,
          ),
           CustomText(
            text: "tarigabunasser@gmail.com",
            fontSize: 16,
            color: Theme.of(context).dividerColor,
          ),
        ],
      ),
    );
  }
}
