import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_market/features/product/presentation/search_bloc/search_bloc.dart';

import '../../../../injection.dart';
import '../widgets/search_form.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Search')),
      body: BlocProvider(
        create: (_) => getIt<SearchBloc>(),
        child: const SearchForm(),
      ),
    );
  }
}
