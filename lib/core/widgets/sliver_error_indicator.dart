import 'package:flutter/material.dart';

import 'error_indicator.dart';

class SliverErrorIndicator extends StatelessWidget {
  final String message;

  const SliverErrorIndicator({super.key, required this.message});

  @override
  Widget build(context) =>
      SliverFillRemaining(child: ErrorIndicator(message: message));
}
