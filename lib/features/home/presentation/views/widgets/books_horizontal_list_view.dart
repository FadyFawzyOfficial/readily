import 'package:flutter/material.dart';

import '../../../data/models/book/book.dart';
import 'book_image.dart';

class BooksHorizontalListView extends StatelessWidget {
  final List<Book> books;

  const BooksHorizontalListView({super.key, required this.books});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(24),
      scrollDirection: Axis.horizontal,
      itemCount: books.length,
      itemBuilder: (context, index) => BookImage(
        imageUrl: books[index].volumeInfo.imageLinks?.thumbnail,
      ),
      separatorBuilder: (context, index) => const SizedBox(width: 16),
    );
  }
}
