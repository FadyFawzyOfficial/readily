import 'package:flutter/material.dart';

import '../../../../../core/constants/styles.dart';

class BookRate extends StatelessWidget {
  final double rate;
  final int count;

  const BookRate({super.key, required this.rate, required this.count});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.star_rounded, color: Colors.yellow),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: Text('$rate', style: ts16Medium),
        ),
        Text('($count)', style: const TextStyle(color: Colors.grey)),
      ],
    );
  }
}
