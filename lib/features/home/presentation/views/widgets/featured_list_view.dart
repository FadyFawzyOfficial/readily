import 'package:flutter/material.dart';

import 'book_image.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(context) {
    return ListView.separated(
      padding: const EdgeInsets.all(24),
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) => const BookImage(),
      separatorBuilder: (context, index) => const SizedBox(width: 16),
    );
  }
}
