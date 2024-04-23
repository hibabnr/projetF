import 'package:flutter/material.dart';
import 'package:maisonparfaite/common/widgets/costum_shapes/containers/primary_header_container.dart';
import 'package:maisonparfaite/common/widgets/costum_shapes/containers/search_container.dart';
import 'package:maisonparfaite/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:maisonparfaite/common/widgets/texts/section_heading.dart';
import 'package:maisonparfaite/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:maisonparfaite/features/shop/screens/home/widgets/home_categories.dart';
import 'package:maisonparfaite/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:maisonparfaite/utils/constants/image_strings.dart';
import 'package:maisonparfaite/utils/constants/sizes.dart';



class HomeScreen extends StatelessWidget{
   const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   const Scaffold(
      body: SingleChildScrollView(
        child: Column(
        children: [
          //Header
          TPrimaryHeaderContainer(
            child: Column(
              children: [

                //Appbar
                  THomeAppBar(),
                 SizedBox(height: TSizes.sm),

                 //Searchabar
                TSearchContainer(text:'Rechercher en magasin' ),
                SizedBox(height: TSizes.sm),

                //padding
                Padding(
                  padding: EdgeInsets.only(left: TSizes.defaultSpace),
                  child: Column(
                    children: [
                      TSectionHeading(title:  'Catégories populaires',showActionButton: false, textColor: Colors.white, ),
                      SizedBox(height: TSizes.spaceBtwItems),
                    //Catégories

                      ThomeCategories()
                    ],
                  ) ,)

           ]
            )

    ),

          //body
          Padding(
            padding:  EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                TPromoSlider(banners: [TImages.promoBanner1, TImages.promoBanner2, TImages.promoBanner3]),
                SizedBox(height: TSizes.spaceBtwItems),

                TProductCardVertical(),

              ],
            ),


                    ),


         ],
        ),
      ),


    );
  }

}




