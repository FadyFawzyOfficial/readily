import 'package:flutter/material.dart';

import '../../../../../core/constants/styles.dart';
import '../../../data/models/book/volume_info.dart';
import 'book_image.dart';
import 'book_rate.dart';
import 'book_toggle_button.dart';

class BookDetailsSection extends StatelessWidget {
  final VolumeInfo bookInfo;

  const BookDetailsSection({super.key, required this.bookInfo});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 124, vertical: 16),
          child: BookImage(
            imageUrl: bookInfo.imageLinks?.thumbnail,
          ),
        ),
        Text(
          bookInfo.title!,
          style: ts30Bold,
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(bookInfo.authors![0], style: ts20BoldItalicGrey),
        ),
        BookRate(count: bookInfo.ratingsCount, rate: bookInfo.averageRating),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 48),
          child: BookToggleButton(
            bookPreviewUrl: bookInfo.previewLink!,
          ),
        ),
      ],
    );
  }
}
