import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:login_app/src/constants/colors.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/constants/text_strings.dart';
import 'package:login_app/src/features/authentication/models/model_on_boarding.dart';
import 'package:login_app/src/features/authentication/screens/on_boarding/on_boarding_page_widget.dart';
import 'package:login_app/src/features/authentication/screens/splash_screen/splash_screen.dart';

class OnBoardingController extends GetxController{
  final controller = LiquidController();
  RxInt currentPage = 0.obs;

  final pages = [
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: onBoardingImage1,
        title: onBoardingTitle1,
        subTitle: onBoardingSubTitle1,
        counterText: onBoardingCounter1,
        bgColor: onBoardingPage1Color,
      ),
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: onBoardingImage2,
        title: onBoardingTitle2,
        subTitle: onBoardingSubTitle2,
        counterText: onBoardingCounter2,
        bgColor: onBoardingPage2Color,
      ),
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: onBoardingImage3,
        title: onBoardingTitle3,
        subTitle: onBoardingSubTitle3,
        counterText: onBoardingCounter3,
        bgColor: onBoardingPage3Color,
      ),
    ),
  ];

  onPageChangedCallback(int activePageIndex) => currentPage.value = activePageIndex;

  animateToNextSlide(){
    int nextPage = controller.currentPage + 1;
    controller.animateToPage(page: nextPage);
  }

  skip(){
    // controller.jumpToPage(page: (pages.length-1));
    Get.offAll(const SplashScreen());
  }

}