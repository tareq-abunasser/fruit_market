import 'package:flutter/material.dart';

import '../../domain/entities/product.dart';
import 'search_item_result.dart';

class SearchResults extends StatelessWidget {
  const SearchResults({required this.items});

  final List<Product> items;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(top:20.0),
      child: ListView.separated(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return SearchResultItem(item: items[index]);
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
      ),
    );
  }
}