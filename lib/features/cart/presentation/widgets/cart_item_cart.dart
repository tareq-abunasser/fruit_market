import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/services/size_config.dart';
import '../../../../core/widgets/custom_images.dart';
import '../../../../core/widgets/custom_text_field.dart';
import '../../domain/entities/cart_item.dart';
import '../../domain/entities/value_objects.dart';
import '../cubit/cart_actor/cart_actor_cubit.dart';

class CartItemCard extends StatelessWidget {
  final CartItem _cartItem;
  final int indexItem;

  const CartItemCard(this._cartItem, this.indexItem, {Key? key})
      : super(key: key);

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
              imageUrl: _cartItem.product.imageURL.getOrCrash(),
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
                          text: _cartItem.product.name.getOrCrash(),
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                    Align(
                        alignment: FractionalOffset.centerRight,
                        child: GestureDetector(
                          child: const Icon(Icons.delete),
                          onTap: () {
                            context
                                .read<CartActorCubit>()
                                .deleteCartItem(_cartItem);
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
                        "${_cartItem.product.price.getOrCrash().ceil()} Per/kg",
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Spacer(),
                    FloatingActionButton(
                        onPressed: () {
                          context
                              .read<CartActorCubit>()
                              .decreaseCartItemQuantity(_cartItem);
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
                          print("increase $indexItem");
                          context
                              .read<CartActorCubit>()
                              .increaseCartItemQuantity(_cartItem);
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
