import 'package:flutter/material.dart';

import 'featured_list_view.dart';
import 'medium_title.dart';
import 'books_sliver_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(context) {
    return LayoutBuilder(
      builder: (context, constraints) => CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: constraints.maxHeight * 0.3,
              child: const FeaturedListView(),
            ),
          ),
          const SliverToBoxAdapter(child: MediumTitle()),
          const BooksSliverList(),
        ],
      ),
    );
  }
}
