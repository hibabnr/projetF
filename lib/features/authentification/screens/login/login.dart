import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maisonparfaite/common/styles/spacing_styles.dart';
import 'package:maisonparfaite/common/widgets/login_signup/form_divider.dart';
import 'package:maisonparfaite/features/authentification/screens/login/widgets/login_from.dart';
import 'package:maisonparfaite/features/authentification/screens/login/widgets/login_header.dart';
import 'package:maisonparfaite/common/widgets/login_signup/social_buttons.dart';
import 'package:maisonparfaite/utils/constants/sizes.dart';
import 'package:maisonparfaite/utils/constants/text_strings.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [

            //logo,title and sub-title 
             const TLoginHeader(),

            //form 
             const TLoginForm(),

            //divider
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),

             const SizedBox(height: TSizes.spaceBtwSections,),
            //footer
             const TSocialButtons()

            ],
          ),
        ) ,
      ),
      );

    
  }
}






