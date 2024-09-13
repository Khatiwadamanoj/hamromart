



import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../consts/colors.dart';
import '../../consts/styles.dart';


Widget featuredButton({String? title,iconPath }){
  return Row(
    children: [
     Image.asset(iconPath, width: 60,),
      20.widthBox,
      title!.text.fontFamily(semibold).color(darkFontGrey).make(),
    ],
  ).box.width(400).margin(const EdgeInsets.symmetric(horizontal: 12)).white.padding(const EdgeInsets.all(12)).roundedSM.outerShadowSm.make();
}


