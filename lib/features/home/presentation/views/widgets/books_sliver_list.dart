import 'package:flutter/material.dart';

import 'seller_list_tile.dart';

class BooksSliverList extends StatelessWidget {
  const BooksSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(24),
      sliver: SliverList.separated(
        // padding: const EdgeInsets.all(24),
        itemCount: 10,
        itemBuilder: (context, index) => const SellerListTile(),
        separatorBuilder: (context, index) => const SizedBox(height: 16),
      ),
    );
  }
}
