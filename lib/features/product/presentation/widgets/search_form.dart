import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_market/features/product/domain/entities/product.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/services/size_config.dart';
import '../../../../core/widgets/custom_images.dart';
import '../search_bloc/search_bloc.dart';
import 'search_bar.dart';
import 'search_body.dart';

class SearchForm extends StatelessWidget {
  const SearchForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:  <Widget>[
        SizedBox(height: SizeConfig.defaultSize! * 3),
        const SearchBar(),
        const SearchBody(),
      ],
    );
  }
}
