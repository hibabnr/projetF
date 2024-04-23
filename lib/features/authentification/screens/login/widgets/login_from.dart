import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:maisonparfaite/features/authentification/screens/password_configuration/forget_password.dart';
import 'package:maisonparfaite/features/authentification/screens/signup/signup.dart';
import 'package:maisonparfaite/navigation_menu.dart';
import 'package:maisonparfaite/utils/constants/colors.dart';
import 'package:maisonparfaite/utils/constants/sizes.dart';
import 'package:maisonparfaite/utils/constants/text_strings.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(child: Padding(
      padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
      child: Column(
        children: [
          //Email
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.direct_right),
              labelText: TTexts.email,
            ) ,
          ),
           const SizedBox(height: TSizes.spaceBtwInputFields),
           TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              labelText: TTexts.password,
              suffixIcon: Icon(Iconsax.eye_slash),
            ) ,
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields / 2),
    
          //remember me and forget password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //forget password
              TextButton(onPressed: () => Get.to(()=> const ForgetPassword()) , 
              child: const Text(TTexts.forgetPassword)),
            ],
          ),
    
          const SizedBox(height: TSizes.spaceBtwSections ),
    
          // sign in button
          SizedBox(
            width: double.infinity,
            child:
            ElevatedButton(onPressed: () => Get.to(() => const NavigationMenu()),
           child: Text(TTexts.signIn),
           style: ButtonStyle(
            backgroundColor:  MaterialStateProperty.all(TColors.buttonPrimary),
           ),
           )),

           const SizedBox(height: TSizes.spaceBtwItems ),

    
           //create account button 
    
           SizedBox(
            width: double.infinity,
            child:
            OutlinedButton(onPressed: () => Get.to(() => const SignupScreen() ),
           child:const Text(TTexts.createAccount))),
        ],
      ),
    ),);
  }
}