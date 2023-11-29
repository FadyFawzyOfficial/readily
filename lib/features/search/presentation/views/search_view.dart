import 'package:flutter/material.dart';

import 'widgets/search_input.dart';

class SearchView extends StatelessWidget {
  static const name = '/search';

  const SearchView({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const SearchInput(),
      ),
    );
  }
}
