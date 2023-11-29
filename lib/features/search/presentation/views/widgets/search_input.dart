import 'package:flutter/material.dart';

import '../../../../../core/constants/decorations.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({super.key});

  @override
  Widget build(context) {
    return TextField(
      textInputAction: TextInputAction.search,
      decoration: InputDecoration(
        constraints: const BoxConstraints(minHeight: 48),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        border: const OutlineInputBorder(borderRadius: kBorderRadius12),
        labelText: 'Find a Book...',
        suffix: IconButton(
          icon: const Icon(Icons.search_rounded),
          onPressed: () {},
        ),
      ),
    );
  }
}
