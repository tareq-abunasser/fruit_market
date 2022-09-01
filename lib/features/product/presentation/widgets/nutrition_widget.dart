import 'package:flutter/material.dart';

class NutritionWidget extends StatelessWidget {
  const NutritionWidget(this.nutrition,{Key? key}) : super(key: key);
  final String nutrition;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 10.0,
          width: 10.0,
          decoration: const BoxDecoration(
            color: Color(0xff838181),
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(
          width: 5.0,
        ),
         Text(nutrition)
      ],
    );
  }
}
