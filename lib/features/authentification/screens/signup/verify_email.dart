import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maisonparfaite/features/authentification/screens/login/login.dart';
import 'package:maisonparfaite/utils/constants/image_strings.dart';
import 'package:maisonparfaite/utils/constants/sizes.dart';
import 'package:maisonparfaite/utils/constants/text_strings.dart';
import 'package:maisonparfaite/utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.offAll(() => const LoginScreen()), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body:  SingleChildScrollView(

        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //image
                Image(image: const AssetImage(TImages.deliveredEmailIllustration),
                width: THelperFunctions.screenWidth() * 0.6,),
                const SizedBox(height: TSizes.spaceBtwSections,),

              //title and subtitle 
              Text(TTexts.confirmEmail,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItems,),
              Text(TTexts.confirmEmailSubTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwSections,),
              
              
             


            ],
          ),
        ),
      ),
    );
  }
}