import 'package:flutter/material.dart';

import 'featured_list_item.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(24),
      scrollDirection: Axis.horizontal,
      itemCount: 2,
      itemBuilder: (context, index) => const FeaturedListItem(),
      separatorBuilder: (context, index) => const SizedBox(width: 16),
    );
  }
}
