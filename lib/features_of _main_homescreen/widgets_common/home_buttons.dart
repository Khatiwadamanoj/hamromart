
import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../consts/colors.dart';
import '../../consts/styles.dart';
Widget homeButtons({width, height , icon , String? title, onPress}){
 return Column(
   mainAxisAlignment: MainAxisAlignment.center,
   children: [
    Image.asset(icon, width: 26, ),
    5.heightBox,
    title!.text.fontFamily(semibold).color(darkFontGrey).make()
   ],
 ).box.rounded.white.size(width, height).shadowSm.make();

}