import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fruit_market/core/widgets/custom_text_field.dart';

import '../../../../core/utils/size_config.dart';
import '../../../../core/widgets/custom_images.dart';
import '../../../../core/widgets/custom_rating_bar.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: CustomImage(
              image: AssetImage("assets/images/broccoli.jpg"),
              width: SizeConfig.defaultSize! * 12,
              height: SizeConfig.defaultSize! * 12,
            ),
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                        text: text, fontWeight: FontWeight.bold, fontSize: 18),
                    const Spacer(),
                    const Icon(Icons.arrow_forward_ios)
                  ],
                ),
                CustomRatingBar(
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                const CustomText(
                  text: "Rate this Product",
                  color: Color(0xffb2b2b2),
                  fontSize: 14,
                ),
                const CustomText(
                  text: "Delivered on 24 Feb 2021.",
                  fontSize: 16,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
