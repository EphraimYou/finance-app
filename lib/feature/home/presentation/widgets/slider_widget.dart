import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:finance_app/core/utils/app_color.dart';
import 'package:finance_app/feature/home/presentation/widgets/card_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  final List<Widget> child = [
    CardItem(color: AppColor.primaryColor),
    CardItem(color: AppColor.secondCardColor),
    CardItem(color: AppColor.thirdCardColor),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: CarouselSlider(
            items: child,
            options: CarouselOptions(
              height: 263.h,
              padEnds: false,
              aspectRatio: 0.8,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
              autoPlay: false,
              enlargeCenterPage: true,
              viewportFraction: 0.5,
              initialPage: 0,
            ),
          ),
        ),
        SizedBox(height: 16.h),
        Align(
          alignment: Alignment.center,
          child: AnimatedSmoothIndicator(
            activeIndex: currentIndex,
            count: child.length,
            effect: ExpandingDotsEffect(
              dotWidth: 10.w,
              dotHeight: 10.h,
              spacing: 5.w,
              expansionFactor: 2,
              dotColor: AppColor.grayColor,
              activeDotColor: AppColor.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
