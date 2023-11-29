import 'package:flutter/material.dart';

import '../../../../core/constants/strings.dart';
import 'widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  static const name = '/home';

  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Image(
          image: AssetImage(kLogoImagePath),
          height: 24,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search_rounded),
          ),
        ],
      ),
      body: const HomeViewBody(),
    );
  }
}
