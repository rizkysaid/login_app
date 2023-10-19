import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:login_app/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:login_app/src/constants/sizes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startSplashAnimation();

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.zero,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              FadeInAnimation(
                durationInMs: 1600,
                animate: AnimatePosition(
                  bottomAfter: 0,
                  bottomBefore: 60,
                  leftAfter: -30,
                  leftBefore: 0,
                ),
                child: const Image(
                  image: AssetImage(splashTopIcon),
                ),
              ),
              FadeInAnimation(
                durationInMs: 1600,
                animate: AnimatePosition(
                  topBefore: 80,
                  topAfter: 0,
                  leftAfter: defaultSize,
                  leftBefore: -80,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('.RizkySaid App/',
                        style: Theme.of(context).textTheme.headlineMedium),
                    Text('Aplikasi Login',
                        style: Theme.of(context).textTheme.displaySmall),
                    Text('With Flutter',
                        style: Theme.of(context).textTheme.displaySmall),
                  ],
                ),
              ),
              FadeInAnimation(
                durationInMs: 2400,
                animate: AnimatePosition(
                  bottomBefore: 0,
                  bottomAfter: 100,
                ),
                child: const Center(
                  child: Image(
                    image: AssetImage(splashImage),
                    width: 340,
                  ),
                ),
              ),
              FadeInAnimation(
                durationInMs: 2400,
                animate: AnimatePosition(
                  bottomBefore: 0,
                  bottomAfter: 60,
                  rightBefore: defaultSize,
                  rightAfter: 0,
                ),
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.yellowAccent,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
