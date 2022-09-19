import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fruit_market/core/widgets/custom_text_field.dart';
import 'package:fruit_market/features/orders/domain/entities/order_item.dart';
import 'package:get/get.dart';

import '../../../../core/services/size_config.dart';
import '../../../../core/widgets/custom_images.dart';
import '../../../../core/widgets/custom_rating_bar.dart';
import '../cubit/orders_actor/orders_actor_cubit.dart';

class OrderItemCard extends StatelessWidget {
  const OrderItemCard(this._item, {Key? key}) : super(key: key);
  final OrderItem _item;

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
                imageUrl: _item.cartItem.product.imageURL.getOrCrash(),
                width: SizeConfig.defaultSize! * 12,
                height: SizeConfig.defaultSize! * 12),
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
                        text: _item.cartItem.product.name.getOrCrash(),
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                    const Spacer(),
                    const Icon(Icons.arrow_forward_ios)
                  ],
                ),
                CustomRatingBar(
                  initialRating: _item.rate,
                  onRatingUpdate: (rate) {
                    context
                        .read<OrdersActorCubit>()
                        .updateOrderItem(_item.copyWith(rate: rate));
                  },
                ),
                 CustomText(
                  text: "Rate this Product".tr,
                  color: const Color(0xffb2b2b2),
                  fontSize: 14,
                ),
                 CustomText(
                  text: "order at ${_item.orderAtFormatted}",
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
