import 'package:flutter/material.dart';

import 'featured_list_view.dart';
import 'medium_title.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(context) {
    return Column(
      children: [
        const Expanded(
          flex: 3,
          child: FeaturedListView(),
        ),
        const Expanded(
          child: MediumTitle(),
        ),
        Expanded(
          flex: 6,
          child: Container(),
        ),
      ],
    );
  }
}
