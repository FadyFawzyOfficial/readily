import 'package:flutter/material.dart';

import '../../../../../core/constants/styles.dart';
import 'book_image.dart';
import 'book_rate.dart';
import 'book_toggle_button.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 124, vertical: 16),
          child: BookImage(),
        ),
        Text('A Million To one', style: ts30Bold),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: Text('Fady Fawzy', style: ts20BoldItalicGrey),
        ),
        BookRate(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 48),
          child: BookToggleButton(),
        ),
      ],
    );
  }
}
