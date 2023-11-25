import 'package:flutter/material.dart';

import '../../../../core/constants/strings.dart';
import 'widgets/sliding_animation.dart';

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
        SlidingAnimation(
          child: Text(
            'Read Free Books',
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
