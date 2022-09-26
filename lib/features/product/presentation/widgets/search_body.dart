import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_market/features/product/presentation/widgets/search_result.dart';

import '../search_bloc/search_bloc.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        if (state is SearchStateLoading) {
          return const CircularProgressIndicator();
        }
        if (state is SearchStateError) {
          return Text(state.error.toString());
        }
        if (state is SearchStateSuccess) {
          return state.items.isEmpty
              ? const Center(child: Text('No Results'))
              : Expanded(child: SearchResults(items: state.items));
        }
        return Container();
      },
    );
  }
}
