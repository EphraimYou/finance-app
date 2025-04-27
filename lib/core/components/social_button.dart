// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:finance_app/core/utils/app_color.dart';

class SocialButton extends StatelessWidget {
  final Function() onTap;
  final String imagePath;
  const SocialButton({super.key, required this.onTap, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 56.h,
        width: 105.w,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(imagePath)),
          color: AppColor.witheColor,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: AppColor.borderColor, width: 1.w),
        ),
      ),
    );
  }
}
