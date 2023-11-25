import 'package:flutter/material.dart';

import '../../../../core/constants/strings.dart';
import 'widgets/sliding_animation_text.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(context) => const Scaffold(body: SplashViewBody());
}

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image(image: AssetImage(kLogoImagePath)),
        SlidingAnimationText(),
      ],
    );
  }
}
