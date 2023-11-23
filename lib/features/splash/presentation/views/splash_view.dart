import 'package:flutter/material.dart';

import '../../../../core/constants/strings.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(context) {
    return const Scaffold(
      body: SplashViewBody(),
    );
  }
}

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Image(
        image: AssetImage(kLogoImagePath),
      ),
    );
  }
}
