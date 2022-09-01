import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_market/core/widgets/custom_text_field.dart';
import 'package:fruit_market/features/home/data/repositories/home_repository.dart';
import 'package:fruit_market/features/home/domain/entities/product.dart';
import 'package:fruit_market/features/home/presentation/bloc/home_bloc.dart';
import '../../../../injection.dart';
import '../../domain/entities/product_subclass.dart';
import '../../domain/repositories/i_home_repository.dart';
import 'product_widget.dart';

class ProductSubclassWidget extends StatefulWidget {
  final ProductSubclass productSubclass;

  ProductSubclassWidget(this.productSubclass, {Key? key}) : super(key: key);

  @override
  State<ProductSubclassWidget> createState() => _ProductSubclassWidgetState();
}

class _ProductSubclassWidgetState extends State<ProductSubclassWidget> {
  late ScrollController _scrollController;
  List<Product> products = [];
  bool hasMoreData = true;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {
        state.mapOrNull(
            productsLoadSuccess: (success) =>
                hasMoreData = success.products.isNotEmpty);
      },
      builder: (context, state) {
        products = BlocProvider.of<HomeBloc>(context)
            .listProducts
            .where((p) =>
                p.parentId.getOrCrash() ==
                widget.productSubclass.id.getOrCrash())
            .toList();
        addListenerToScroll(context, state);

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CustomText(
                  text: widget.productSubclass.name.getOrCrash(),
                  fontWeight: FontWeight.bold,
                ),
                CustomText(
                    text: " ${widget.productSubclass.discount.getOrCrash()}%")
              ],
            ),
            CustomText(text: widget.productSubclass.desc.getOrCrash()),
            SizedBox(
              height: 240,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  controller: _scrollController,
                  itemCount: products.length,
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: 20,
                    );
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return ProductWidget(product: products[index]);
                  }),
            )
          ],
        );
      },
    );
  }

  void addListenerToScroll(context, HomeState state) {
    _scrollController.addListener(() {
      double maxScroll = _scrollController.position.maxScrollExtent;
      double currentScroll = _scrollController.position.pixels;
      if (currentScroll >= maxScroll &&
          hasMoreData &&
          state.maybeMap(
              productsLoadInProgress: (_) => false, orElse: () => true)) {
        BlocProvider.of<HomeBloc>(context).add(HomeEvent.watchProducts(
            parentId: widget.productSubclass.id.getOrCrash(),
            lastProduct: products.last.id.getOrCrash()));
      }
    });
  }
}
