import 'package:flutter/material.dart';

import '../../../../../core/constants/decorations.dart';
import '../../../../../core/constants/styles.dart';
import 'book_price.dart';

class BookToggleButton extends StatefulWidget {
  const BookToggleButton({super.key});

  @override
  State<BookToggleButton> createState() => _BookToggleButtonState();
}

class _BookToggleButtonState extends State<BookToggleButton> {
  final _toggleButtonsSelection = [false, true];

  @override
  Widget build(context) {
    return ToggleButtons(
      borderRadius: kBorderRadius12,
      fillColor: Colors.orangeAccent,
      selectedBorderColor: Colors.orangeAccent,
      constraints: const BoxConstraints(minWidth: 175, minHeight: 48),
      isSelected: _toggleButtonsSelection,
      onPressed: (index) => setState(() =>
          _toggleButtonsSelection[index] = !_toggleButtonsSelection[index]),
      children: const [
        BookPrice(),
        Text('Free Preview', style: tsToggleButton),
      ],
    );
  }
}
