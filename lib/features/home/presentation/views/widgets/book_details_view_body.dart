import 'package:flutter/material.dart';

import 'book_details_section.dart';
import 'similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(context) {
    return const Column(
      children: [
        Expanded(flex: 71, child: BookDetailsSection()),
        Expanded(flex: 29, child: SimilarBooksSection()),
      ],
    );
  }
}
