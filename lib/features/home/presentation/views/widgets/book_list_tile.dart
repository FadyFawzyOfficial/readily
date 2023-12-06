import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../data/models/book/book.dart';
import '../../../data/models/book/volume_info.dart';
import '../book_details_view.dart';
import 'author_name.dart';
import 'book_image.dart';
import 'book_price_and_rate.dart';
import 'book_title.dart';

class BookListTile extends StatelessWidget {
  final Book book;

  const BookListTile({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.pushNamed(
        BookDetailsView.name,
        extra: book.volumeInfo,
      ),
      child: Row(
        children: [
          Expanded(
            child: BookImage(
              imageUrl: book.volumeInfo.imageLinks?.thumbnail,
            ),
          ),
          const SizedBox(width: 24),
          Expanded(flex: 3, child: BookData(bookInfo: book.volumeInfo)),
        ],
      ),
    );
  }
}

class BookData extends StatelessWidget {
  final VolumeInfo bookInfo;

  const BookData({super.key, required this.bookInfo});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        BookTitle(title: bookInfo.title!),
        AuthorName(name: bookInfo.authors![0]),
        BookPriceAndRate(
          rate: bookInfo.averageRating,
          count: bookInfo.ratingsCount,
        ),
      ],
    );
  }
}
