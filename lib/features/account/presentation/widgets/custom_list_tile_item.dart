import 'package:flutter/material.dart';
import 'package:fruit_market/core/widgets/custom_text_field.dart';

import '../../../../core/constants.dart';
import '../../../../core/utils/size_config.dart';

class ListTileItem extends StatelessWidget {
  const ListTileItem({
    Key? key,
    required this.leadingIcon,
    required this.text,
    this.fontSize = 14,
    this.onTap,
    this.trailing,
  }) : super(key: key);
  final IconData leadingIcon;
  final String text;
  final double? fontSize;
  final VoidCallback? onTap;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: SizeConfig.defaultSize! * 6,
          child: ListTile(
            leading: Icon(
              leadingIcon,
              color: Theme.of(context).primaryColor,
            ),
            title: CustomText(
              text: text,
              color: Colors.black,
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
            ),
            onTap: onTap,
            trailing: trailing,
          ),
        ),
        const Divider(
          height: 3,
          thickness: 1,
          color: Color(0xFFD1D1D1),
        ),
      ],
    );
  }
}
