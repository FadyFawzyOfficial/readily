import 'package:flutter/material.dart';

import '../../../../../core/constants/styles.dart';
import 'similar_books_list_view.dart';

class SimilarBooksSection extends StatelessWidget {
  final String category;

  const SimilarBooksSection({super.key, required this.category});

  @override
  Widget build(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 24),
          child: Text('You may also like:', style: ts18SemiBold),
        ),
        Expanded(child: SimilarBooksListView(category: category)),
        const SizedBox(height: 24),
      ],
    );
  }
}
