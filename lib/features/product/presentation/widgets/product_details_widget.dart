import 'package:flutter/material.dart';
import 'package:fruit_market/core/widgets/custom_text_field.dart';
import '../../../../core/services/size_config.dart';
import '../../../../core/widgets/custom_images.dart';
import '../../../cart/presentation/widgets/add_cart_item_button.dart';
import '../../domain/entities/product.dart';
import 'nutrition_widget.dart';

class ProductDetailsWidget extends StatelessWidget {
  const ProductDetailsWidget({Key? key, required this.product})
      : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomNetworkImage(
              imageUrl: product.imageURL.getOrCrash(),
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
              const Spacer(),
              AddCartItemButton(
                product: product,
                text: "Add to cart",
                quantity: 1,
              )
            ],
          ),
        ],
      ),
    );
  }
}
