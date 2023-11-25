import 'package:flutter/material.dart';

import '../../../../../core/constants/strings.dart';

class FeaturedListItem extends StatelessWidget {
  const FeaturedListItem({super.key});

  @override
  Widget build(BuildContext context) =>
      const Card(child: Image(image: AssetImage(kTestImagePath)));
}
