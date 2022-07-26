import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fruit_market/core/widgets/custom_text_field.dart';

import '../../../../core/utils/size_config.dart';
import '../../../../core/widgets/custom_images.dart';
import '../../../../core/widgets/custom_rating_bar.dart';
import '../../../cart/presentation/widgets/add_cart_item_button.dart';
import '../../domain/entities/product.dart';

class FavouriteProductCard extends StatefulWidget {
  final Product _product;

  const FavouriteProductCard(
    this._product, {
    Key? key,
  }) : super(key: key);

  @override
  State<FavouriteProductCard> createState() => _FavouriteProductCardState();
}

class _FavouriteProductCardState extends State<FavouriteProductCard> {
  int _productNo = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: CachedNetworkImage(
              fit: BoxFit.cover,
              imageUrl: widget._product.imageURL.getOrCrash(),
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  CircularProgressIndicator(value: downloadProgress.progress),
              errorWidget: (context, url, error) => const Icon(Icons.error),
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
                    Expanded(
                      child: CustomText(
                        text: widget._product.name.getOrCrash(),
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    // const Spacer(),
                    CustomText(
                      text: "${widget._product.price.getOrCrash()} Per/kg",
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ],
                ),
                const CustomText(
                  text: "Pick up from organic farms",
                  color: Color(0xffb2b2b2),
                  fontSize: 14,
                ),
                CustomRatingBarWithoutEditing(
                  rating: widget._product.rate.getOrCrash(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    FloatingActionButton(
                        onPressed: () {
                          if (_productNo > 1) {
                            setState(() {
                              _productNo--;
                            });
                          }
                        },
                        heroTag: 'weight-',
                        mini: true,
                        backgroundColor: Colors.white,
                        child: const Icon(
                          Icons.remove,
                          color: Colors.black,
                        ),
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(12))),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: CustomText(
                        text: "$_productNo",
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    FloatingActionButton(
                        onPressed: () {
                          setState(() {
                            _productNo++;
                          });
                        },
                        heroTag: 'weight+',
                        mini: true,
                        backgroundColor: Colors.white,
                        child: const Icon(
                          Icons.add,
                          color: Colors.black,
                        ),
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(12))),
                    const Spacer(),
                    AddCartItemButton(onPressed: () {
                    }, cartItem: widget._product.toCartItem(_productNo),)
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
