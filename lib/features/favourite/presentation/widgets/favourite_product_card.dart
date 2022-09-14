import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fruit_market/core/widgets/custom_text_field.dart';
import 'package:get/get.dart';

import '../../../../core/services/size_config.dart';
import '../../../../core/widgets/custom_images.dart';
import '../../../../core/widgets/custom_rating_bar.dart';
import '../../../cart/presentation/widgets/add_cart_item_button.dart';
import '../../domain/entities/favourite_item.dart';
import '../cubit/favourite_actor/favourite_actor_cubit.dart';

class FavouriteProductCard extends StatelessWidget {
  final FavouriteItem _item;
  final int index;

  FavouriteProductCard(
    this._item,
    this.index, {
    Key? key,
  }) : super(key: key);

  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: CustomNetworkImage(
              imageUrl: _item.imageURL.getOrCrash(),
              width: SizeConfig.defaultSize! * 12,
              height: SizeConfig.defaultSize! * 12,
              imageKey: _item.id.getOrCrash(),
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
                        text: _item.name.getOrCrash(),
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    // const Spacer(),
                    CustomText(
                      text: "${_item.price.getOrCrash()} Per/kg",
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ],
                ),
                CustomText(
                  text: "Pick up from organic farms".tr,
                  color: const Color(0xffb2b2b2),
                  fontSize: 14,
                ),
                CustomRatingBarWithoutEditing(
                  rating: _item.rate.getOrCrash(),
                ),
                StatefulBuilder(
                    builder: (BuildContext context, StateSetter setState) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      FloatingActionButton(
                          onPressed: () {
                            if (quantity > 1) {
                              setState(() {
                                quantity--;
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
                          text: "$quantity",
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      FloatingActionButton(
                        onPressed: () {
                          setState(() {
                            quantity++;
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
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      const Spacer(),
                      AddCartItemButton(
                        onPressed: () {
                          context
                              .read<FavouriteActorCubit>()
                              .deleteFavoriteItem(_item, index);
                        },
                        favouriteItem: _item,
                        quantity: quantity,
                      )
                    ],
                  );
                })
              ],
            ),
          ),
        ],
      ),
    );
  }
}
