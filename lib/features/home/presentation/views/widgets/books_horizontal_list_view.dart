import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart' show GoRouterHelper;

import '../../../data/models/book/book.dart';
import '../book_details_view.dart';
import 'book_image.dart';

class BooksHorizontalListView extends StatelessWidget {
  final List<Book> books;
  final bool openSameView;

  const BooksHorizontalListView({
    super.key,
    required this.books,
    this.openSameView = false,
  });

  @override
  Widget build(context) {
    return ListView.separated(
      padding: const EdgeInsets.all(24),
      scrollDirection: Axis.horizontal,
      itemCount: books.length,
      itemBuilder: (context, index) {
        final bookInfo = books[index].volumeInfo;
        return InkWell(
          onTap: () => openSameView
              ? context.goNamed(
                  BookDetailsView.name,
                  extra: bookInfo,
                )
              : context.pushNamed(
                  BookDetailsView.name,
                  extra: bookInfo,
                ),
          child: BookImage(
            imageUrl: bookInfo.imageLinks?.thumbnail,
          ),
        );
      },
      separatorBuilder: (context, index) => const SizedBox(width: 16),
    );
  }
}
