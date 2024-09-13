import 'package:flutter/material.dart';
import 'package:hamromart/consts/consts.dart';

import '../../screens/models/category.dart';
class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF57b9ff),
        title: icCategories.text.bold.white.make()
      ),
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/images/bg-Color.jpg', // Path to your background image
              fit: BoxFit.fill,
            ),
          ),
          // Foreground content
          Container(
            padding: const EdgeInsets.all(12),
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: 12,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                mainAxisExtent: 200,
              ),

                    ///velocity and after that i will make it background with, hami
                ///image ni used garxum vanesi.. clip.antiAlish used garnu parxa....



              itemBuilder: (context, index) {
                 return  Column(
                   children: [
                     Image.asset( categoryProduct[index],width: 150, height: 150, fit: BoxFit.cover,),
                     categoriesList[index].text.color(darkFontGrey).align(TextAlign.center).make(),
                   ] ,
                 ).box.white.rounded.clip(Clip.antiAlias).outerShadowSm.
                 make();
              },
            ),
          ),
        ],
      ),
    );
  }
}
