import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../../../../../core/constants/durations.dart';
import '../../../../home/presentation/views/home_view.dart';

class SlidingAnimation extends StatefulWidget {
  final Widget child;

  const SlidingAnimation({super.key, required this.child});

  @override
  State<SlidingAnimation> createState() => _SlidingAnimationState();
}

class _SlidingAnimationState extends State<SlidingAnimation>
    with SingleTickerProviderStateMixin {
  late final AnimationController animationController;
  late final Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, _) => SlideTransition(
        position: slidingAnimation,
        child: widget.child,
      ),
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: kSlidingAnimationDuration,
    );

    slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 10),
      end: const Offset(0, 0),
    ).animate(animationController);

    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(
      kNavigationDuration,
      () => Get.to(
        const HomeView(),
        transition: Transition.fadeIn,
        duration: kTransitionDuration,
      ),
    );
  }
}