import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../../core/entities/failures.dart';
import '../../../../injection.dart';
import '../../domain/entities/subcategory.dart';
import '../../domain/usecases/get_subcategories.dart';

class SubcategoriesWidget extends StatefulWidget {
  const SubcategoriesWidget(this.parentId, {Key? key}) : super(key: key);

  final String parentId;

  @override
  _SubcategoriesWidgetState createState() => _SubcategoriesWidgetState();
}

class _SubcategoriesWidgetState extends State<SubcategoriesWidget> {
  static const _pageSize = 4;

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
      // Don't worry about displaying progress or error indicators on screen; the
      // package takes care of that. If you want to customize them, use the
      // [PagedChildBuilderDelegate] properties.
      PagedListView<int, Subcategory>(
        key: PageStorageKey<String>(widget.parentId),
        pagingController: _pagingController,
        builderDelegate: PagedChildBuilderDelegate<Subcategory>(
          itemBuilder: (context, item, index) => Container(
            child: Text(item.name.getOrCrash()),
          ),
        ),
      );

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  Future<void> _fetchPage(int pageKey) async {
    final failureOrSubcategories = await getIt<GetSubcategories>()
        .call(limit: _pageSize, parentId: widget.parentId);
    failureOrSubcategories.fold(
        (error) => _pagingController.error = error.map(
            internet: (_) => 'No internet connection',
            serverError: (_) => 'Server error',
            cacheError: (_) => 'cache error'), (subcategories) {
      final isLastPage = subcategories.length < _pageSize;
      if (isLastPage) {
        _pagingController.appendLastPage(subcategories);
      } else {
        final nextPageKey = pageKey + subcategories.length;
        _pagingController.appendPage(subcategories, nextPageKey);
      }
    });
  }
}
