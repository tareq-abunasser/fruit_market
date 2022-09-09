import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:get/get.dart';
import '../../../../core/services/size_config.dart';
import '../../../../core/widgets/custom_images.dart';
import '../../../../core/widgets/custom_rating_bar.dart';
import '../../../../core/widgets/custom_text_field.dart';
import '../../../../injection.dart';
import '../../../../routes/mobile_app_pages.dart';
import '../../domain/entities/product.dart';
import '../cubit/product/product_cubit.dart';

class ProductWidget extends StatelessWidget {
  ProductWidget({Key? key, required this.product}) : super(key: key);
  Product product;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProductCubit>(),
      child: BlocConsumer<ProductCubit, ProductState>(
        listener: (context, state) {
          state.mapOrNull(updateSuccess: (_) {});
        },
        builder: (context, state) {
          return SizedBox(
            width: 120,
            height: 200,
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.topRight,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.toNamed(MobileRoutes.Product, arguments: [product]);
                      },
                      child: CustomNetworkImage(
                        imageUrl: product.imageURL.getOrCrash(),
                        width: SizeConfig.defaultSize! * 13,
                        height: SizeConfig.defaultSize! * 15,
                        imageKey: product.id.getOrCrash(),
                      ),
                    ),
                    Positioned(
                      top: 15,
                      right: 15,
                      child: InkWell(
                        onTap: () {
                          product = product.copyWith(isLike: !product.isLike);
                          context
                              .read<ProductCubit>()
                              .updateFavoriteProduct(product);
                        },
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: product.isLike
                              ? const Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                )
                              : const Icon(Icons.favorite_border),
                        ),
                      ),
                    ),
                  ],
                ),
                CustomRatingBarWithoutEditing(
                  rating: product.rate.getOrCrash(),
                ),
                CustomText(
                  text: product.name.getOrCrash(),
                  fontWeight: FontWeight.bold,
                ),
                Row(
                  children: [
                    const Icon(FontAwesomeIcons.shekelSign),
                    CustomText(
                      text: " ${product.price.getOrCrash()} Per/ kg",
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
