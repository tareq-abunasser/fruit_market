import 'package:flutter/cupertino.dart';

import '../../../../../../core/widgets/custom_text_field.dart';
import '../../../../../../core/widgets/space_widget.dart';

class CompleteInfoItem extends StatelessWidget {
  const CompleteInfoItem({
    Key? key,
    required this.text,
    this.inputType,
    this.maxLines,
    @required this.validator,
    @required this.controller,
    @required this.onChanged,
  }) : super(key: key);
  final String text;
  final TextInputType? inputType;
  final int? maxLines;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final ValueSetter? onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: const TextStyle(
            fontFamily: 'Poppins',
            fontSize: 16,
            color: Color(0xff0c0b0b),
            fontWeight: FontWeight.w600,
            height: 1.5625,
          ),
          textHeightBehavior:
              const TextHeightBehavior(applyHeightToFirstAscent: false),
          textAlign: TextAlign.center,
        ),
        const VerticalSpace(value: 2),
        CustomTextFormField(
          maxLines: maxLines,
          inputType: inputType,
          validator: validator,
          controller: controller,
          onChanged: onChanged,
        )
      ],
    );
  }
}
