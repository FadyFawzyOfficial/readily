import 'package:flutter/material.dart';

import '../../../../../core/constants/strings.dart';

class BookImage extends StatelessWidget {
  const BookImage({super.key});

  @override
  Widget build(BuildContext context) =>
      const Card(child: Image(image: AssetImage(kTestImagePath)));
}
