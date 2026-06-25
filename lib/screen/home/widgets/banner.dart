
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter/material.dart';

class HomeBanner extends StatefulWidget {
  const HomeBanner({super.key});

  @override
  State<HomeBanner> createState() => _HomeBannerState();
}

class _HomeBannerState extends State<HomeBanner> {

  final List<String> images = [
    'assets/images/banner.png',
    'assets/images/banner.png',
    'assets/images/banner.png',
  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter, 
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 115.0,
            viewportFraction: 1.0,
            autoPlay: true, 
            autoPlayInterval: const Duration(seconds: 3),
            onPageChanged: (index, reason) {
              setState(() {
                activeIndex = index; 
              });
            },
          ),
          items: images.map((imagePath) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage(imagePath), 
                  fit: BoxFit.cover, 
                ),
              ),
            );
          }).toList(),
        ),
        Positioned(
          bottom: 10, 
          child: AnimatedSmoothIndicator(
            activeIndex: activeIndex,
            count: images.length, 
            effect: const ExpandingDotsEffect(
              activeDotColor: Color(0xff53B175),
              dotHeight: 8,
              dotWidth: 8,
            ),
          ),
        ),
      ],
    );
  }
}