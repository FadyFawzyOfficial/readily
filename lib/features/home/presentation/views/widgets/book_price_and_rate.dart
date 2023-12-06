import 'package:flutter/material.dart';

import 'book_price.dart';
import 'book_rate.dart';

class BookPriceAndRate extends StatelessWidget {
  final double rate;
  final int count;

  const BookPriceAndRate({super.key, required this.rate, required this.count});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: BookPrice()),
        Expanded(child: BookRate(rate: rate, count: count)),
      ],
    );
  }
}
