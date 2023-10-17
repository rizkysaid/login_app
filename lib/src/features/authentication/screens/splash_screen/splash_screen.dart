import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/features/authentication/controllers/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final splashScreenController = Get.put(SplashScreenController());
  

  @override
  Widget build(BuildContext context) {
    
    splashScreenController.startAnimation();
 
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Obx( () => AnimatedPositioned(
                  duration: const Duration(milliseconds: 1600),
                  top: splashScreenController.animate.value ? 0 : -50,
                  left: splashScreenController.animate.value ? 0 : -50,
                  child: const Image(image: AssetImage(splashTopIcon), width: 150,)
              ),
            ),
            Obx( () => AnimatedPositioned(
                  duration: const Duration(milliseconds: 1600),
                  top: 60,
                  left: splashScreenController.animate.value ? 30 : -200,
                  child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 1600),
                    opacity: splashScreenController.animate.value ? 1 : 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('.RizkySaid App/', style: Theme.of(context).textTheme.headlineMedium),
                        Text('Aplikasi Login', style: Theme.of(context).textTheme.displaySmall),
                        Text('With Flutter', style: Theme.of(context).textTheme.displaySmall),
                      ],
                    ),
                  )
              ),
            ),
            Obx( () => AnimatedPositioned(
                  duration: const Duration(milliseconds: 1600),
                  bottom: splashScreenController.animate.value ? 30 : -100,
                  left: 25,
                  child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 1600),
                    opacity: splashScreenController.animate.value ? 1 : 0,
                    child: const Image(image: AssetImage(splashImage), width: 340,),
                  )
              ),
            ),
            Obx( () => AnimatedPositioned(
                  duration: const Duration(milliseconds: 1600),
                  bottom: 40,
                  right: splashScreenController.animate.value ? 40 : -40,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.yellowAccent,
                    ),
                  )
              ),
            )
          ],
        ),
      ),
    );
  }


}
