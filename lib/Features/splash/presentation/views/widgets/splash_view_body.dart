import 'package:booklyapp/Features/Home/Presentation/Views/home_view.dart';
import 'package:booklyapp/Features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:booklyapp/constants.dart';
import 'package:booklyapp/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _slidingAnimation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();

    navigateToHome();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(
          height: 4,
        ),
        SlidingText(slidingAnimation: _slidingAnimation)
      ],
    );
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(const HomeView(),
          transition: Transition.fade, duration: kTransitionDuration);
    });
  }

  void initSlidingAnimation() {
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _slidingAnimation = Tween(begin: const Offset(0, 4), end: Offset.zero)
        .animate(_animationController);
    _animationController.forward();
  }
}
