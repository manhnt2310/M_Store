import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:m_store/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:m_store/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:m_store/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:m_store/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:m_store/utils/constants/image_strings.dart';
import 'package:m_store/utils/constants/text_strings.dart';
import '../../controllers.onboarding/onboarding_controller.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: MImage.onBoardingImage1,
                title: MTexts.onBoardingTitle1,
                subTitle: MTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: MImage.onBoardingImage2,
                title: MTexts.onBoardingTitle2,
                subTitle: MTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: MImage.onBoardingImage3,
                title: MTexts.onBoardingTitle3,
                subTitle: MTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          /// Skip Button
          const OnBoardingSkip(),

          /// Dot Navigation
          const OnBoardingDotNavigation(),

          /// Circular Button
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}
