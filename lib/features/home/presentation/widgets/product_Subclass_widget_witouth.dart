import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_market/core/widgets/custom_text_field.dart';
import 'package:fruit_market/features/home/data/repositories/home_repository.dart';
import 'package:fruit_market/features/home/domain/entities/product.dart';
import 'package:fruit_market/features/home/presentation/bloc/home_bloc.dart';
import 'package:flutter_pagewise/flutter_pagewise.dart';

import '../../../../injection.dart';
import '../../domain/entities/product_subclass.dart';
import '../../domain/repositories/i_home_repository.dart';
import 'product_widget.dart';

class ProductSubclassWidget extends StatelessWidget {
  final ProductSubclass productSubclass;
  final ScrollController _scrollController = ScrollController();

  ProductSubclassWidget(this.productSubclass, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        List<Product> products = BlocProvider.of<HomeBloc>(context)
            .listProducts
            .where((p) => p.parentId == productSubclass.id)
            .toList();
        // addListenerToScroll(context, state, productSubclass.id, products);

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CustomText(
                  text: productSubclass.name.getOrCrash(),
                  fontWeight: FontWeight.bold,
                ),
                CustomText(text: " ${productSubclass.discount}%")
              ],
            ),
            CustomText(text: productSubclass.desc.getOrCrash()),
            SizedBox(
              height: 240,
              child: PagewiseListView<Product>(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,

                  pageSize: 3,
                  itemBuilder: (BuildContext context, Product entry, _) {
                    return ProductWidget(
                      product: entry,
                    );
                  },
                  pageFuture: (pageIndex) {
                    BlocProvider.of<HomeBloc>(context).add(
                        HomeEvent.watchProductSubclasses(
                            parentId: productSubclass.id.getOrCrash(),
                            lastProductSubClassId: products.last.id.getOrCrash()));
                    return Future(() => BlocProvider.of<HomeBloc>(context)
                        .listProducts
                        .where((p) => p.parentId == productSubclass.id)
                        .toList());
                  }),
            ),
            // child: ListView.separated(
            //     scrollDirection: Axis.horizontal,
            //     itemCount: products.length + 1,
            //     separatorBuilder: (context, index) {
            //       return const SizedBox(
            //         width: 20,
            //       );
            //     },
            //     itemBuilder: (BuildContext context, int index) {
            //       if (index < products.length) {
            //         return ProductWidget(product:products[index]);
            //       } else {
            //         return Container();
            //       }
            //     }),
          ],
        );
      },
    );
  }
}
