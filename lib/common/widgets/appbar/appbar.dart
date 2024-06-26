import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:maisonparfaite/utils/constants/sizes.dart';
import 'package:maisonparfaite/utils/device/device_utility.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class TAppBar extends StatelessWidget implements PreferredSizeWidget {  @override

const TAppBar({
  super.key, this.title,  this.showBackArrow = false, this.leadingIcon, this.actions, this.leadingOnPressed,});

     final Widget? title;
     final bool showBackArrow;
     final IconData? leadingIcon;
     final List<Widget>? actions;
     final VoidCallback? leadingOnPressed;
  @override
  Widget build(BuildContext context) {
    return  Padding(

      padding: const EdgeInsets.symmetric(horizontal: TSizes.md ),


      child: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading:false ,
        leading: showBackArrow
            ? IconButton(onPressed: () => Get.back(), icon:const Icon(Iconsax.arrow_left))
            : leadingIcon != null ? IconButton(onPressed: leadingOnPressed, icon : Icon(leadingIcon)) : null,
        title: title,
        actions: actions,
      ) ,);
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}