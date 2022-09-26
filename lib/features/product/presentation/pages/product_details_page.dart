import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../domain/entities/product.dart';
import '../widgets/product_details_widget.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late Product product;
    dynamic argumentData = Get.arguments;
    if (argumentData != null) {
      product = argumentData[0];
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("DETAILS"),
      ),
      body: ProductDetailsWidget(product: product),
    );
  }
}
