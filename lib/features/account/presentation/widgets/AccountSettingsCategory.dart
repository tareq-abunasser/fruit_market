import 'package:flutter/material.dart';

import '../../../../core/utils/size_config.dart';
import '../../../../core/widgets/custom_text_field.dart';

class AccountSettingsCategory extends StatelessWidget {
  const AccountSettingsCategory(this.categoryName,{Key? key,}) : super(key: key);
  final String categoryName;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: SizeConfig.defaultSize! * 6,
      color: const Color(0xffE6E6E6),
      child: Padding(
        padding: EdgeInsets.only(
            top: SizeConfig.defaultSize! * 2,
            left: SizeConfig.defaultSize! * 2),
        child:  CustomText(
          text: categoryName,
          fontWeight: FontWeight.bold,
          color: Colors.black54,
        ),
      ),
    );
  }
}
