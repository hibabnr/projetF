import 'package:flutter/material.dart';
import 'package:maisonparfaite/common/widgets/costum_shapes/containers/rounded_container.dart';
import 'package:maisonparfaite/common/widgets/images/t_rounded_image.dart';
import 'package:maisonparfaite/utils/constants/image_strings.dart';
import 'package:maisonparfaite/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../styles/shadows.dart';


class TProductCardVertical extends StatelessWidget{
  const TProductCardVertical({super.key});
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);



    // TODO: implement build
    return Container(
      width: 180,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [TShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: THelperFunctions.isDarkMode(context) ? TColors.darkerGrey : TColors.white,
      ),
      child: Column(
        children: [
          TRoundedContainer(
            height: 100,
            padding: const EdgeInsets.all(TSizes.sm),
            backgroundColor: dark ? TColors.dark : TColors.light,
            child: Stack(
              children: [
                TRoundedImage(imageUrl: TImages.productImage73),
              ],
            ),
          )
        ],
      ),
    );
  }

}