import 'package:flutter/material.dart';

class SlidingAnimationText extends StatefulWidget {
  const SlidingAnimationText({super.key});

  @override
  State<SlidingAnimationText> createState() => _SlidingAnimationTextState();
}

class _SlidingAnimationTextState extends State<SlidingAnimationText>
    with SingleTickerProviderStateMixin {
  late final AnimationController animationController;
  late final Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 10),
      end: const Offset(0, 0),
    ).animate(animationController);

    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, _) => SlideTransition(
        position: slidingAnimation,
        child: const Text('Read Free Books', textAlign: TextAlign.center),
      ),
    );
  }
}
