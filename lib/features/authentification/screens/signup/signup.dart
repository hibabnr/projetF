import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maisonparfaite/common/widgets/login_signup/form_divider.dart';
import 'package:maisonparfaite/common/widgets/login_signup/social_buttons.dart';
import 'package:maisonparfaite/features/authentification/screens/signup/widgets/signup_from.dart';
import 'package:maisonparfaite/utils/constants/sizes.dart';
import 'package:maisonparfaite/utils/constants/text_strings.dart';


class SignupScreen
 extends StatelessWidget {
  const SignupScreen
  ({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Title
              Text(TTexts.signupTitle,
              style: Theme.of(context).textTheme.headlineMedium,),
              const SizedBox(height: TSizes.spaceBtwSections),
              //form
               TSignupForm(),
              const SizedBox(height: TSizes.spaceBtwSections,),

              //divider
              TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections,),

              //social buttons 
              const TSocialButtons(),

              const SizedBox(height: TSizes.spaceBtwSections,),

          ],)
      ),
      ),
    );
  }
}

