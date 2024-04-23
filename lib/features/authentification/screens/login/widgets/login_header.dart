import 'package:flutter/material.dart';
import 'package:maisonparfaite/utils/constants/sizes.dart';
import 'package:maisonparfaite/utils/constants/text_strings.dart';

class TLoginHeader extends StatelessWidget {
  const TLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
         const Image(
          height: 150,
          image: AssetImage('assets/logos/logo.png'),),
          Text(TTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium),
          const SizedBox(height: TSizes.sm),
          Text(TTexts.loginSubTitle, 
          style: Theme.of(context).textTheme.bodyMedium),
          
      ],
    );
  }
}