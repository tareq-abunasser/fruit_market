import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruit_market/features/home/domain/entities/product.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:get/get.dart';

import '../../../../core/widgets/custom_images.dart';
import '../../../../core/widgets/custom_rating_bar.dart';
import '../../../../core/widgets/custom_text_field.dart';
import '../../../../injection.dart';
import '../../../../routes/mobile_app_pages.dart';
import '../bloc/home_bloc.dart';
import '../cubit/product/product_cubit.dart';

class ProductWidget extends StatelessWidget {
  ProductWidget({Key? key, required this.product}) : super(key: key);
  Product product;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProductCubit, ProductState>(
      listener: (context, state) {
        state.mapOrNull(updateFavoriteProductLoadInSuccess: (_) {
          int productIndex = context
              .read<HomeBloc>()
              .products
              .indexWhere((element) => element.id == product.id);
          context.read<HomeBloc>().products[productIndex] = product;
        });
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
                    child: CachedNetworkImage(
                      fit: BoxFit.cover,
                      imageUrl: product.imageURL.getOrCrash(),
                      progressIndicatorBuilder:
                          (context, url, downloadProgress) =>
                              CircularProgressIndicator(
                                  value: downloadProgress.progress),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                      width: 120,
                      height: 140,
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
    );
  }
}
