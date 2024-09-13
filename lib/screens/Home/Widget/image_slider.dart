import 'package:flutter/material.dart';

import '../../../consts/consts.dart';
import '../../../consts/lists.dart';

class ImageSlider extends StatelessWidget {
  final Function(int) onChange;
  final int currentSlide;
  const ImageSlider({
    super.key,
    required this.currentSlide,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
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
      ],
    );
  }
}
