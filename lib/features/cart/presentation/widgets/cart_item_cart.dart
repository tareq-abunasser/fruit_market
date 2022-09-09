import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/services/size_config.dart';
import '../../../../core/widgets/custom_images.dart';
import '../../../../core/widgets/custom_text_field.dart';
import '../../domain/entities/cart_item.dart';
import '../../domain/entities/value_objects.dart';
import '../cubit/cart/cart_cubit.dart';

class CartItemCard extends StatelessWidget {
  CartItem _cartItem;
  int indexItem;

  CartItemCard(this._cartItem, this.indexItem, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(17),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.only(end: 15.0),
            child: CustomNetworkImage(
              imageUrl: _cartItem.imageURL.getOrCrash(),
              width: SizeConfig.defaultSize! * 12,
              height: SizeConfig.defaultSize! * 12,
              imageKey: _cartItem.id.getOrCrash(),
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
                          text: _cartItem.name.getOrCrash(),
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                    Align(
                        alignment: FractionalOffset.centerRight,
                        child: GestureDetector(
                          child: const Icon(Icons.delete),
                          onTap: () {
                            context.read<CartCubit>().removeCartItem(indexItem);
                          },
                        )),
                  ],
                ),
                Row(
                  children: [
                    Text("${_cartItem.oldPrice.getOrCrash()}",
                        style: const TextStyle(
                          decoration: TextDecoration.lineThrough,
                          color: Colors.grey,
                          fontSize: 14,
                        )),
                    Expanded(
                      child: Align(
                        alignment: FractionalOffset.centerRight,
                        child: CustomText(
                            text:
                                "Rs ${_cartItem.saved.getOrCrash().ceil()} Saved",
                            // fontWeight: FontWeight.bold,
                            color: const Color(0xff69A03A),
                            fontSize: 14),
                      ),
                    ),
                  ],
                ),
                CustomText(
                    text:
                        "${_cartItem.currentPrice.getOrCrash().ceil()} Per/kg",
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Spacer(),
                    FloatingActionButton(
                        onPressed: () {
                          context
                              .read<CartCubit>()
                              .decreaseCartItemQuantity(indexItem);
                        },
                        heroTag: '$indexItem weight-',
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
                        text: _cartItem.quantity.isValid()
                            ? "${_cartItem.quantity.getOrCrash()}"
                            : "1",
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    FloatingActionButton(
                        onPressed: () {
                          context
                              .read<CartCubit>()
                              .increaseCartItemQuantity(indexItem);
                        },
                        heroTag: '$indexItem weight+',
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
