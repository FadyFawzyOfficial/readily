import 'package:flutter/material.dart';

import 'featured_list_view.dart';
import 'medium_title.dart';
import 'seller_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(context) {
    return const Column(
      children: [
        Expanded(flex: 3, child: FeaturedListView()),
        Expanded(child: MediumTitle()),
        Expanded(flex: 6, child: SellerListView()),
      ],
    );
  }
}
