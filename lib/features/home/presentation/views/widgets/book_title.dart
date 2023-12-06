import 'package:flutter/material.dart';

import '../../../../../core/constants/styles.dart';

class BookTitle extends StatelessWidget {
  final String title;

  const BookTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: ts20Normal,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
