import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../search_bloc/search_bloc.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final _textController = TextEditingController();

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: TextField(
        controller: _textController,
        autocorrect: false,
        onChanged: (text) {
          context.read<SearchBloc>().add(TextChanged(text: text));
        },
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search),
          suffixIcon: GestureDetector(
            onTap: _onClearTapped,
            child: const Icon(Icons.clear),
          ),
          hintText: 'search product name'.tr,
        ),
      ),
    );
  }

  void _onClearTapped() {
    _textController.text = '';
    context.read<SearchBloc>().add(const TextChanged(text: ''));
  }
}
