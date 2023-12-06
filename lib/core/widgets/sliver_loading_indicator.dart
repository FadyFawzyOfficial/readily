import 'package:flutter/material.dart';

import 'loading_indicator.dart';

class SliverLoadingIndicator extends StatelessWidget {
  const SliverLoadingIndicator({super.key});

  @override
  Widget build(context) =>
      const SliverFillRemaining(child: SizedBox(child: LoadingIndicator()));
}
