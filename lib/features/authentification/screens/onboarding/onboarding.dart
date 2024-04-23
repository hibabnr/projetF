import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maisonparfaite/features/authentification/controllers/onboarding_controller.dart';
import 'package:maisonparfaite/features/authentification/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:maisonparfaite/features/authentification/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:maisonparfaite/utils/constants/image_strings.dart';
import '../../../../utils/constants/text_strings.dart';
import 'widgets/onboarding_page.dart';
import 'widgets/onboarding_skip.dart';


class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return  Scaffold(
      body: Stack(
        children: [
          //horizontal scrollable pages 
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(image: TImages.onBoardingImage1, 
              title: TTexts.onBoardingTitle1  ,
              subTitle: TTexts.onBoardingSubTitle1 ,),

               OnBoardingPage(image: TImages.onBoardingImage2, 
              title: TTexts.onBoardingTitle2  ,
              subTitle: TTexts.onBoardingSubTitle2 ,),

               OnBoardingPage(image: TImages.onBoardingImage3, 
              title: TTexts.onBoardingTitle3  ,
              subTitle: TTexts.onBoardingSubTitle3 ,),

            ],

          ),

          //skip button 
          const OnBoardingSkip(),


          //dot navigation smoothPageIndicator

          const OnBoardingDotNavigation(),

          //circular button
          
          const OnBoardingNextButton()
       


        ],
      ),

    );
  }
  
 
}








  