import 'package:flutter/material.dart';

import '../../../../../core/constants/styles.dart';
import 'book_image.dart';

class SellerListTile extends StatelessWidget {
  const SellerListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: BookImage()),
        SizedBox(width: 24),
        Expanded(
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              BookTitle(),
              AuthorName(),
              PriceAndRate(),
            ],
          ),
        ),
      ],
    );
  }
}

class BookTitle extends StatelessWidget {
  const BookTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Harry Potter and the Goblet of Fire',
      style: ts20Normal,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}

class AuthorName extends StatelessWidget {
  const AuthorName({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Text(
        'J.K. Rowling',
        style: TextStyle(color: Colors.grey),
      ),
    );
  }
}

class PriceAndRate extends StatelessWidget {
  const PriceAndRate({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: Text('19.99 €', style: ts16Bold)),
        Expanded(
          child: Row(
            children: [
              Icon(Icons.star_rounded, color: Colors.yellow),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 6),
                child: Text('4.8', style: ts16Medium),
              ),
              Text('(2390)', style: TextStyle(color: Colors.grey)),
            ],
          ),
        ),
      ],
    );
  }
}
