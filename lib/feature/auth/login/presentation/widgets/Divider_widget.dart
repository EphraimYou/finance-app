import 'package:finance_app/core/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DividerWidget extends StatelessWidget {
  final String text;
  const DividerWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Container(height: 1.h, color: AppColor.borderColor)),
        Text(
          ' $text ',
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
            color: AppColor.darkGrayColor,
          ),
        ),
        Expanded(child: Container(height: 1.h, color: AppColor.borderColor)),
      ],
    );
  }
}
