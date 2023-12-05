import 'package:flutter/material.dart';

import '../constants/styles.dart';

class ErrorIndicator extends StatelessWidget {
  final String message;

  const ErrorIndicator({super.key, required this.message});

  @override
  Widget build(context) => Text(message, style: ts18SemiBold);
}
