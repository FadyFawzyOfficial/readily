import 'package:flutter/material.dart';

import '../../../data/models/book/book.dart';
import 'book_list_tile.dart';

class BooksVerticalSliverList extends StatelessWidget {
  final List<Book> books;

  const BooksVerticalSliverList({super.key, required this.books});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(24),
      sliver: SliverList.separated(
        // padding: const EdgeInsets.all(24),
        itemCount: books.length,
        itemBuilder: (context, index) => BookListTile(book: books[index]),
        separatorBuilder: (context, index) => const SizedBox(height: 16),
      ),
    );
  }
}
