import 'package:flutter/material.dart';
import 'package:fruit_market/injection.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import '../../domain/entities/product.dart';
import '../../domain/usecases/get_products.dart';
import 'product_widget.dart';

class ListProductWidget extends StatefulWidget {
  const ListProductWidget(this.parentId, {Key? key}) : super(key: key);
  final String parentId;

  @override
  State<ListProductWidget> createState() => _ListProductWidgetState();
}

class _ListProductWidgetState extends State<ListProductWidget> {
  static const _pageSize = 2;
  String? lastProductId;
  final PagingController<int, Product> _pagingController =
      PagingController(firstPageKey: 0);

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) => PagedListView<int, Product>.separated(
      pagingController: _pagingController,
      scrollDirection: Axis.horizontal,
      builderDelegate: PagedChildBuilderDelegate<Product>(
        itemBuilder: (context, item, index) => ProductWidget(
          product: item,
        ),
      ),
      separatorBuilder: (BuildContext context, int index) => const SizedBox(
            width: 20,
          ));

  @override
  void dispose() {
    // _pagingController.dispose();
    super.dispose();
  }

  Future<void> _fetchPage(int pageKey) async {
    final failureOrSubcategories = await getIt<GetProducts>().call(
        limit: _pageSize,
        parentId: widget.parentId,
        lastProduct: lastProductId);
    failureOrSubcategories.fold(
        (error) => _pagingController.error = error.map(
            internet: (_) => 'No internet connection',
            serverError: (_) => 'Server error',
            cacheError: (_) => 'cache error'), (products) {
      if (products.isNotEmpty) {
        lastProductId = products.last.id.getOrCrash();
      }
      final isLastPage = products.length < _pageSize;

      if (isLastPage) {
        _pagingController.appendLastPage(products);
      } else {
        final nextPageKey = pageKey + products.length;
        _pagingController.appendPage(products, nextPageKey);
      }
    });
  }
}
