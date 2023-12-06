import 'package:flutter/material.dart';

import '../../../../../core/constants/decorations.dart';
import '../../../../../core/constants/styles.dart';
import '../../../../../core/utils/functions/url_launcher.dart';
import 'book_price.dart';

class BookToggleButton extends StatelessWidget {
  const BookToggleButton({super.key});

  static const _toggleButtonsSelection = [false, true];

  @override
  Widget build(context) {
    return ToggleButtons(
      borderRadius: kBorderRadius12,
      fillColor: Colors.orangeAccent,
      selectedBorderColor: Colors.orangeAccent,
      constraints: const BoxConstraints(minWidth: 175, minHeight: 48),
      isSelected: _toggleButtonsSelection,
      onPressed: (index) {
        if (index == 1) {
          urlLauncher(context: context, url: 'https://www.google.com');
        }
      },
      children: const [
        BookPrice(),
        Text('Free Preview', style: tsToggleButton),
      ],
    );
  }
}
