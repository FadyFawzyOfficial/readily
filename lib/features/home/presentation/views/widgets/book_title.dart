import 'package:flutter/material.dart';

import '../../../../../core/constants/styles.dart';

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
