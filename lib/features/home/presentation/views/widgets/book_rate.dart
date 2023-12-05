import 'package:flutter/material.dart';

import '../../../../../core/constants/styles.dart';

class BookRate extends StatelessWidget {
  const BookRate({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.star_rounded, color: Colors.yellow),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 6),
          child: Text('4.8', style: ts16Medium),
        ),
        Text('(2390)', style: TextStyle(color: Colors.grey)),
      ],
    );
  }
}
