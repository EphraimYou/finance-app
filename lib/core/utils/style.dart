import 'package:finance_app/core/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyle {
  static TextStyle primaryHeadLineStyle = TextStyle(
    color: AppColor.primaryColor,
    fontSize: 30.sp,
    fontWeight: FontWeight.bold,
  );

  static TextStyle subtitleStyle = TextStyle(
    color: AppColor.secondaryColor,
    fontSize: 15.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle black16w600 = TextStyle(
    color: AppColor.thirdColor,
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle gray12w500 = TextStyle(
    color: AppColor.grayColor,
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle textButtonStyle = TextStyle(
    color: AppColor.darkColor,
    fontSize: 15.sp,
    fontWeight: FontWeight.w700,
  );
}
