import 'package:finance_app/core/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;
  final Function() onPressed;
  final double border;
  const DefaultButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.textColor = Colors.white,
    this.color = AppColor.primaryColor,
    this.border = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: color,
      minWidth: double.infinity,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.r),
        side: BorderSide(color: AppColor.primaryColor, width: border),
      ),
      height: 56.h,
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: 15.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
