import 'package:flutter/material.dart';

import '../../../../core/services/size_config.dart';
import '../../../../core/widgets/custom_text_field.dart';

class AccountSettingsCategory extends StatelessWidget {
  const AccountSettingsCategory(this.categoryName,{Key? key,}) : super(key: key);
  final String categoryName;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: SizeConfig.defaultSize! * 6,
      color: Theme.of(context).dividerColor,
      child: Padding(
        padding: EdgeInsetsDirectional.only(
            top: SizeConfig.defaultSize! * 2,
            start: SizeConfig.defaultSize! * 2),
        child:  CustomText(
          text: categoryName,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
