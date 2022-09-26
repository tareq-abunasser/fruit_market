import 'package:flutter/material.dart';
import 'package:fruit_market/core/services/size_config.dart';
import 'package:fruit_market/features/product/presentation/widgets/list_prducts_widget.dart';
import 'package:fruit_market/features/subcategory/domain/entities/subcategory.dart';

import '../../../../core/widgets/custom_text_field.dart';

class SubcategoryWidget extends StatelessWidget {
  final Subcategory subcategory;

  const SubcategoryWidget(this.subcategory,{Key? key,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomText(
                text: subcategory.name.getOrCrash(),
                fontWeight: FontWeight.bold,
              ),
              CustomText(text: " ${subcategory.discount.getOrCrash()}%")
            ],
          ),
          CustomText(text: subcategory.desc.getOrCrash()),
          SizedBox(
            height: SizeConfig.defaultSize! * 1.5,
          ),
          SizedBox(
              height: SizeConfig.defaultSize! * 23,
              child: ListProductWidget(subcategory.id.getOrCrash()))
        ],
      ),
    );
  }
}
