import 'package:flutter/material.dart';

import '../../../data/models/book/volume_info.dart';
import 'book_details_section.dart';
import 'similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  final VolumeInfo bookInfo;

  const BookDetailsViewBody({super.key, required this.bookInfo});

  @override
  Widget build(context) {
    return Column(
      children: [
        Expanded(
          flex: 71,
          child: BookDetailsSection(bookInfo: bookInfo),
        ),
        const Expanded(
          flex: 29,
          child: SimilarBooksSection(),
        ),
      ],
    );
  }
}
