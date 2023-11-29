import 'package:flutter/material.dart';

import '../../../../../core/constants/styles.dart';
import 'featured_list_view.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 24),
          child: Text('You may also like:', style: ts18SemiBold),
        ),
        Expanded(child: FeaturedListView()),
        SizedBox(height: 24),
      ],
    );
  }
}
