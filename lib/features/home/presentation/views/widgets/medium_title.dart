import 'package:flutter/material.dart';

import '../../../../../core/constants/styles.dart';

class MediumTitle extends StatelessWidget {
  const MediumTitle({super.key});

  @override
  Widget build(context) {
    return const Padding(
      padding: EdgeInsets.only(left: 24),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text('Best Sellers', style: ts18SemiBold),
      ),
    );
  }
}
