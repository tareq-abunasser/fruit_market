import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/size_config.dart';
import '../../../../core/widgets/custom_images.dart';
import '../../../../core/widgets/custom_text_field.dart';
import '../../../../core/widgets/space_widget.dart';
import '../../domain/entities/cart_item.dart';

class CartItemCard extends StatefulWidget {
  const CartItemCard(this._cartItem, {Key? key}) : super(key: key);

  final CartItem _cartItem;

  @override
  State<CartItemCard> createState() => _CartItemCardState();
}

class _CartItemCardState extends State<CartItemCard> {
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
              imageUrl: widget._cartItem.imageURL.getOrCrash(),
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
                    Flexible(
                      child: CustomText(
                          text: widget._cartItem.name.getOrCrash(),
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                    // const HorizontalSpace(
                    //   value: 1,
                    // ),
                    const Spacer(),
                    const Icon(Icons.delete),
                  ],
                ),
                Row(
                  children: [
                    Text("${widget._cartItem.oldPrice.getOrCrash()}",
                        style: const TextStyle(
                          decoration: TextDecoration.lineThrough,
                          color: Colors.grey,
                          fontSize: 14,
                        )),
                    const Spacer(),
                    Expanded(
                      child: CustomText(
                          text: "Rs ${widget._cartItem.saved.getOrCrash().ceil()} Saved",
                          // fontWeight: FontWeight.bold,
                          color: const Color(0xff69A03A),
                          fontSize: 14),
                    ),
                  ],
                ),
                CustomText(
                    text: "${widget._cartItem.currentPrice.getOrCrash().ceil()} Per/kg",
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Spacer(),
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
                        text: "${widget._cartItem.quantity.getOrCrash()}",
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
