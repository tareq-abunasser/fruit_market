import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../../core/entities/failures.dart';
import '../../../../core/services/size_config.dart';
import '../../../../injection.dart';
import '../../domain/entities/subcategory.dart';
import '../../domain/usecases/get_subcategories.dart';
import 'subcategory_widget.dart';

class SubcategoriesWidget extends StatefulWidget {
  const SubcategoriesWidget(this.parentId, {Key? key}) : super(key: key);

  final String parentId;

  @override
  _SubcategoriesWidgetState createState() => _SubcategoriesWidgetState();
}

class _SubcategoriesWidgetState extends State<SubcategoriesWidget>
    with AutomaticKeepAliveClientMixin<SubcategoriesWidget> {
  static const _pageSize = 3;
  String? lastSubcategoryId;
  final PagingController<int, Subcategory> _pagingController =
      PagingController(firstPageKey: 0);

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) =>
      PagedListView<int, Subcategory>.separated(
        pagingController: _pagingController,
        builderDelegate: PagedChildBuilderDelegate<Subcategory>(
          itemBuilder: (context, Subcategory item, index) =>
              SubcategoryWidget(item),
        ),
        separatorBuilder: (context, index) => SizedBox(
          height: SizeConfig.defaultSize! * 4,
        ),
      );

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  Future<void> _fetchPage(int pageKey) async {
    final failureOrSubcategories = await getIt<GetSubcategories>().call(
        limit: _pageSize,
        parentId: widget.parentId,
        lastSubcategoryId: lastSubcategoryId);
    printInfo(info: "failureOrSubcategories _fetchPage");
    printInfo(info: failureOrSubcategories.toString());
    failureOrSubcategories.fold(
        (error) => _pagingController.error = error.map(
            internet: (_) => 'No internet connection',
            serverError: (_) => 'Server error',
            cacheError: (_) => 'cache error'), (subcategories) {
      if (subcategories.isNotEmpty) {
        lastSubcategoryId = subcategories.last.id.getOrCrash();
      }
      final isLastPage = subcategories.length != _pageSize;

      if (isLastPage) {
        _pagingController.appendLastPage(subcategories);
      } else {
        final nextPageKey = pageKey + subcategories.length;
        _pagingController.appendPage(subcategories, nextPageKey);
      }
    });
  }

  @override
  bool get wantKeepAlive => true;
}
