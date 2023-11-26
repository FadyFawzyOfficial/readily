import 'package:flutter/material.dart';

import 'author_name.dart';
import 'book_image.dart';
import 'book_price_and_rate.dart';
import 'book_title.dart';

class SellerListTile extends StatelessWidget {
  const SellerListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: BookImage()),
        SizedBox(width: 24),
        Expanded(flex: 3, child: BookData()),
      ],
    );
  }
}

class BookData extends StatelessWidget {
  const BookData({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        BookTitle(),
        AuthorName(),
        BookPriceAndRate(),
      ],
    );
  }
}
