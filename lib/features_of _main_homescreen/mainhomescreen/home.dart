import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../consts/colors.dart';
import '../../consts/images.dart';
import '../../consts/lists.dart';
import '../../consts/strings.dart';
import '../../consts/styles.dart';
import '../widgets_common/home_buttons.dart';
 class MainHomeScreen extends StatefulWidget {
   const MainHomeScreen({super.key});

   @override
   State<MainHomeScreen> createState() => _MainHomeScreenState();
 }

 class _MainHomeScreenState extends State<MainHomeScreen> {
   Widget featuredButton({
     required String iconPath,
     required String title,
   }) {
     return Column(
       children: [
         Image.asset(
           iconPath,
           width: 50,
           height: 50,
         ),
         5.heightBox,
         title.text.color(darkFontGrey).size(12).make(),
       ],
     ).box.rounded.white.shadowSm.padding(const EdgeInsets.all(8)).make();
   }

   @override
   Widget build(BuildContext context) {
     return Container(
         padding: const EdgeInsets.all(12),
         color: const Color(0xFF7FFDDF),
         width: context.screenWidth,
         height: context.screenHeight,
         child: SafeArea(
             child: SingleChildScrollView(
                 child: Column(
                   children: [
                     Container(
                       padding: const EdgeInsets.symmetric(horizontal: 8.0),
                       decoration: BoxDecoration(
                         color: whiteColor,
                         borderRadius: BorderRadius.circular(12),
                         boxShadow: const [
                           BoxShadow(
                             color: Colors.black12,
                             blurRadius: 8,
                           ),
                         ],
                       ),
                       child: TextFormField(
                         decoration: const InputDecoration(
                           suffixIcon: Icon(Icons.search),
                           filled: true,
                           fillColor: whiteColor,
                           hintText: 'Search Anything !',
                           hintStyle: TextStyle(color: textfieldGrey),
                           border: InputBorder.none,
                           contentPadding: EdgeInsets.symmetric(vertical: 15),
                         ),
                       ),
                     ),
                     10.heightBox,
                     SingleChildScrollView(
                       physics: const BouncingScrollPhysics(),
                       child: Column(
                         children: [
                           // yoo first swiper hoo
                           Padding(
                             padding: const EdgeInsets.all(13),
                             child: VxSwiper.builder(
                               aspectRatio: 18 / 6,
                               autoPlay: true,
                               height: 150,
                               enlargeCenterPage: true,
                               itemCount: slidersList.length,
                               itemBuilder: (context, index) {
                                 return Image.asset(
                                   slidersList[index],
                                   fit: BoxFit.fill,
                                 )
                                     .box
                                     .rounded
                                     .clip(Clip.antiAlias)
                                     .margin(const EdgeInsets.symmetric(horizontal: 8))
                                     .make();
                               },
                             ),
                           ),
                           10.heightBox,
                           // Home buttons row 1st swiper ko muneko...
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             children: List.generate(
                               2,
                                   (index) => homeButtons(
                                 height: context.screenHeight * 0.15,
                                 width: context.screenWidth / 2.5,
                                 icon: index == 0 ? icTodaysDeal : icFlashDeal,
                                 title: index == 0 ? todayDeal : flashsale,
                               ),
                             ),
                           ),

                           // Second swiper for brands

                           10.heightBox,
                           Padding(
                             padding: const EdgeInsets.all(13),
                             child: VxSwiper.builder(
                               aspectRatio: 18 / 6,
                               autoPlay: true,
                               height: 150,
                               enlargeCenterPage: true,
                               itemCount: secondSlidersList.length,
                               itemBuilder: (context, index) {
                                 return Image.asset(
                                   secondSlidersList[index],
                                   fit: BoxFit.fill,
                                 )
                                     .box
                                     .rounded
                                     .clip(Clip.antiAlias)
                                     .margin(const EdgeInsets.symmetric(horizontal: 8))
                                     .make();
                               },
                             ),
                           ),
                           // Category buttons row
                           10.heightBox,
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             children: List.generate(
                               3,
                                   (index) => homeButtons(
                                 height: context.screenHeight * 0.15,
                                 width: context.screenWidth / 3.5,
                                 icon: index == 0
                                     ? icTopCategories
                                     : (index == 1 ? icBrands : icTopSeller),
                                 title: index == 0
                                     ? topCategories
                                     : (index == 1 ? brand : topSellers),
                               ),
                             ),
                           ),

                           /// featured categories CODE................

                           20.heightBox,
                           Align(
                             alignment: Alignment.centerLeft,
                             child: featuredCategories.text
                                 .color(darkFontGrey)
                                 .size(18)
                                 .fontFamily(semibold)
                                 .make(),
                           ),
                           20.heightBox,
                           SingleChildScrollView(
                             scrollDirection: Axis.horizontal,
                             child: Row(
                               children: List.generate(
                                 3,
                                     (index) => Column(
                                   children: [
                                     SizedBox(
                                       width: 200,
                                       child: featuredButton(
                                         iconPath: featuredImages1[index],
                                         title: featuredTitles1[
                                         index], // Provide correct title
                                       ),
                                     ),
                                     20.heightBox,
                                     Padding(
                                       padding: const EdgeInsets.all(4),
                                       child: SizedBox(
                                         width: 200,
                                         child: featuredButton(
                                           iconPath: featuredImages2[index],
                                           title: featuredTitles2[
                                           index], // Provide correct title
                                         ),
                                       ),
                                     )
                                   ],
                                 ),
                               ).toList(),
                             ),
                           ),

                           20.heightBox,

                           Container(
                             padding: const EdgeInsets.all(12),
                             width: double
                                 .infinity, // featured product lai large size the banaune kam garxa
                             decoration: const BoxDecoration(
                                 color: Colors.black38), // box lai color dinxa
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 featuredProduct.text.white.bold.size(18).make(),
                                 10.heightBox,
                                 SingleChildScrollView(
                                   scrollDirection: Axis.horizontal,
                                   child: Row(
                                     children: List.generate(
                                         7,
                                             (index) => Column(
                                           crossAxisAlignment:
                                           CrossAxisAlignment.start,
                                           children: [
                                             Image.asset(featuredProducts[index],
                                                 height: 150,
                                                 width: 150,
                                                 fit: BoxFit.cover),
                                             10.heightBox,
                                             featuredProductList[index]
                                                 .text
                                                 .semiBold
                                                 .color(darkFontGrey)
                                                 .make(),
                                             featuredProductPrice[index]
                                                 .text
                                                 .color(redColor)
                                                 .bold
                                                 .size(16)
                                                 .make(),
                                           ],
                                         )
                                             .box
                                             .white
                                             .margin(const EdgeInsets.symmetric(
                                             horizontal: 4))
                                             .roundedSM
                                             .padding(const EdgeInsets.all(8))
                                             .make()),
                                   ),
                                 ),
                               ],
                             ),
                           ),

                           // aba feri hami third swiper created garera banaune 2nd swiper lai copy garda hunxa............

                           10.heightBox,
                           Padding(
                             padding: const EdgeInsets.all(13),
                             child: VxSwiper.builder(
                               aspectRatio: 18 / 6,
                               autoPlay: true,
                               height: 150,
                               enlargeCenterPage: true,
                               itemCount: thirdSlidersList.length,
                               itemBuilder: (context, index) {
                                 return Image.asset(
                                   thirdSlidersList[index],
                                   fit: BoxFit.fill,
                                 )
                                     .box
                                     .rounded
                                     .clip(Clip.antiAlias)
                                     .margin(const EdgeInsets.symmetric(horizontal: 8))
                                     .make();
                               },
                             ),
                           ),

                           Container(
                             padding: const EdgeInsets.all(12),
                             width: double
                                 .infinity, // featured product lai large size the banaune kam garxa
                             decoration: const BoxDecoration(
                                 color: Colors.black38), // box lai color dinxa
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 allProducts.text.white.bold.size(18).make(),
                                 20.heightBox,
                                 GridView.builder(
                                     physics: const NeverScrollableScrollPhysics(),
                                     shrinkWrap: true,
                                     itemCount: 6,
                                     gridDelegate:
                                     const SliverGridDelegateWithFixedCrossAxisCount(
                                         crossAxisCount: 2,
                                         mainAxisSpacing: 8,
                                         crossAxisSpacing: 8,
                                         mainAxisExtent: 300),
                                     itemBuilder: (context, index) {
                                       return Column(
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                         children: [
                                           Image.asset(allProduct[index],
                                               width: 200,
                                               height: 200,
                                               fit: BoxFit.cover),
                                           10.heightBox,
                                           productList[index]
                                               .text
                                               .semiBold
                                               .color(darkFontGrey)
                                               .make(),
                                           productPrice[index]
                                               .text
                                               .color(redColor)
                                               .bold
                                               .size(16)
                                               .make(),
                                         ],
                                       )
                                           .box
                                           .white
                                           .margin(
                                           const EdgeInsets.symmetric(horizontal: 4))
                                           .roundedSM
                                           .padding(const EdgeInsets.all(12))
                                           .make();
                                     }),
                               ],
                             ),
                           ),
                         ], // Swiper for sliders first page
                       ),
                     ),
                   ],
                 ))));
   }
 }

