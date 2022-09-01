import 'package:cached_network_image/cached_network_image.dart';
import 'package:faker_dart/faker_dart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fruit_market/core/widgets/custom_buttons.dart';
import 'package:fruit_market/core/widgets/custom_text_field.dart';

import '../../../../core/utils/size_config.dart';
import '../../domain/entities/product.dart';
import 'nutrition_widget.dart';

class ProductDetailsWidget extends StatelessWidget {
  const ProductDetailsWidget({Key? key, required this.product})
      : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    final faker = Faker.instance;

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CachedNetworkImage(
              fit: BoxFit.cover,
              imageUrl: product.imageURL.getOrCrash(),
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  CircularProgressIndicator(value: downloadProgress.progress),
              errorWidget: (context, url, error) => const Icon(Icons.error),
              width: double.infinity,
              height: SizeConfig.defaultSize! * 20,
            ),
          ),
          SizedBox(
            height: SizeConfig.defaultSize! * 3,
          ),
          CustomText(
            text: product.name.getOrCrash(),
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: SizeConfig.defaultSize! * 3,
          ),
          Text(
            product.desc.getOrCrash(),
            maxLines: 4,
            overflow: TextOverflow.clip,
          ),
          SizedBox(
            height: SizeConfig.defaultSize! * 3,
          ),
          const CustomText(
            text: "Nutrition",
            fontWeight: FontWeight.bold,
          ),
          Expanded(
            child: ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) => NutritionWidget(
                    product.nutrition.getOrCrash().keys.elementAt(index)),
                separatorBuilder: (context, index) => const SizedBox(
                      height: 5,
                    ),
                itemCount: product.nutrition.getOrCrash().keys.length),
          ),
          // const Spacer(),
          Row(
            children: [
              CustomText(
                text: " ${product.price.getOrCrash()} Per/ kg",
              ),
              MaterialButton(child: const Text("Buy Now"), onPressed: () {})
            ],
          ),
        ],
      ),
    );
  }
}
