import 'package:flutter/material.dart';
import 'package:maisonparfaite/features/authentification/controllers/onboarding_controller.dart';
import 'package:maisonparfaite/utils/constants/colors.dart';
import 'package:maisonparfaite/utils/constants/sizes.dart';
import 'package:maisonparfaite/utils/device/device_utility.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25 ,
      left: TSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController, 
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: const ExpandingDotsEffect(activeDotColor: TColors.dark, dotHeight: 6),
        ),
       );
  }
}