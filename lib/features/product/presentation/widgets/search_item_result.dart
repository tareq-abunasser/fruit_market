import 'package:flutter/material.dart';

import '../../../../core/services/size_config.dart';
import '../../../../core/widgets/custom_images.dart';
import '../../domain/entities/product.dart';

class SearchResultItem extends StatelessWidget {
  const SearchResultItem({Key? key, required this.item}) : super(key: key);

  final Product item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CustomNetworkImage(
        imageUrl: item.imageURL.getOrCrash(),
        width: SizeConfig.defaultSize! * 6,
        height: SizeConfig.defaultSize! * 6,
        imageKey: item.id.getOrCrash(),
      ),
      title: Text(
        item.name.getOrCrash(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: () async {
        // final uri = Uri.parse(item.htmlUrl);
        // if (await canLaunchUrl(uri)) {
        //   await launchUrl(uri);
        // }
      },
    );
  }
}
