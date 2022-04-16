import 'package:avacado_tech/utils/constant/app_constant.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeCarouselSliderSection extends StatelessWidget {
  const HomeCarouselSliderSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        Container(
          margin: const EdgeInsets.only(left: 10, right: 10, top: 12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7.0),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(AppConstant.image),
              )),
          width: double.infinity,
        ),
      ],
      options: CarouselOptions(
          enlargeCenterPage: true,
          viewportFraction: 1,
          autoPlay: true,
          autoPlayInterval: const Duration(milliseconds: 3000),
          height: 180,
          onPageChanged: (int index, reason) {}),
    );
  }
}
