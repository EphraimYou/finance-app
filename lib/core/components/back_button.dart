import 'package:finance_app/core/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: ButtonStyle(
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
            side: BorderSide(color: AppColor.borderColor, width: 1.w),
          ),
        ),
      ),
      color: AppColor.witheColor,
      constraints: const BoxConstraints(minWidth: 41, minHeight: 41),

      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(
        Icons.arrow_back_ios_new,
        color: AppColor.primaryColor,
        size: 19,
      ),
    );
  }
}
