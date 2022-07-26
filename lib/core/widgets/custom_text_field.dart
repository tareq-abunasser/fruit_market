import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextInputType? inputType;
  final Widget? suffixIcon;
  final ValueSetter? onSaved;
  final ValueSetter? onChanged;
  final int? maxLines;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  const CustomTextFormField({
    Key? key,
    @required this.inputType,
    this.suffixIcon,
    this.onSaved,
    this.onChanged,
    this.maxLines,
    @required this.controller,
    @required this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: inputType,
      onChanged: onChanged,
      onSaved: onSaved,
      maxLines: maxLines,
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.transparent,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Color(0xFFCCCCCC),
            )),
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  const CustomText({Key? key, required this.text, this.color, this.fontSize, this.fontWeight})
      : super(key: key);
  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight ;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
          fontWeight: fontWeight,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

