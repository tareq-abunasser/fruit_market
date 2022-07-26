import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fruit_market/core/widgets/custom_text_field.dart';

import '../../../../core/widgets/custom_images.dart';
import '../../../../core/widgets/custom_rating_bar.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
             CustomImage(image: AssetImage("assets/images/broccoli.jpg")),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CustomText(text: text,fontWeight: FontWeight.bold,),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios)

                    ],
                  ),
                  CustomRatingBar(onRatingUpdate: (rating) {
                    print(rating);
                  },),
                  CustomText(
                    text: "Rate this Product",
                    color: Color(0xffb2b2b2),
                  ),
                  CustomText(
                    text: "Delivered on 24 Feb 2021.",
                    fontSize: 12,
                  ),
                ],
              ),
            ),
          ],
        ),
        Divider(
          height: 2,
          thickness: 2,
        ),
      ],
    );
  }
}
