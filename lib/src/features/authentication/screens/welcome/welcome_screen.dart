import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:login_app/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:login_app/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:login_app/src/constants/colors.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/constants/text_strings.dart';
import 'package:login_app/src/features/authentication/screens/login/login_screen.dart';
import 'package:login_app/src/features/authentication/screens/signup/signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startAnimation();

    var mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    return Scaffold(
      backgroundColor: isDarkMode ? secondaryColor : primaryColor,
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Stack(
          alignment: Alignment.topCenter,

          children: [
            FadeInAnimation(
              durationInMs: 1800,
              animate: AnimatePosition(
                bottomAfter: 0,
                bottomBefore: -100,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Hero(
                    tag: "welcome-image-tag",
                    child: Image(
                      image: const AssetImage(welcomeScreenImage),
                      height: (size.height * 0.4),
                    ),
                  ),
                  SizedBox(
                    height: (size.height * 0.1),
                  ),
                  Column(
                    children: [
                      Text(welcomeTitle,
                          style: Theme.of(context).textTheme.headlineMedium),
                      Text(welcomeSubTitle,
                          style: Theme.of(context).textTheme.bodyLarge),
                    ],
                  ),
                  SizedBox(
                    height: (size.height * 0.1),
                  ),
                  SizedBox(
                    width: size.width * 0.95,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: OutlinedButton(
                              onPressed: () {
                                Get.to(const LoginScreen());
                              },
                              child: Text(login.toUpperCase()),
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                              child: ElevatedButton(
                              onPressed: () {
                                Get.to(const SignUpScreen());
                              },
                              child: Text(signup.toUpperCase()),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: (size.height * 0.05),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
