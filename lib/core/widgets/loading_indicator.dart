import 'package:flutter/material.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({super.key});

  @override
  Widget build(context) =>
      const Center(child: CircularProgressIndicator.adaptive());
}
