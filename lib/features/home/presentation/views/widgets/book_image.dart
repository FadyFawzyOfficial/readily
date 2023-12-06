import 'package:flutter/material.dart';

import '../../../../../core/constants/strings.dart';

class BookImage extends StatelessWidget {
  final String? imageUrl;

  const BookImage({super.key, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Image(
        image: NetworkImage(imageUrl ?? kTestImagePath),
        fit: BoxFit.fill,
      ),
    );
  }
}
