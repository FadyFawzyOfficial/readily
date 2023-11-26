import 'package:flutter/material.dart';

import 'book_price.dart';
import 'book_rate.dart';

class BookPriceAndRate extends StatelessWidget {
  const BookPriceAndRate({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: BookPrice()),
        Expanded(child: BookRate()),
      ],
    );
  }
}
