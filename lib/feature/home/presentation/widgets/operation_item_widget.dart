import 'package:finance_app/core/utils/app_color.dart';
import 'package:finance_app/core/utils/app_strings.dart';
import 'package:finance_app/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OperationItemWidget extends StatelessWidget {
  final Map<String, dynamic> items;
  const OperationItemWidget({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 156.w,
      height: 140.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(16.r)),
        border: Border.all(color: AppColor.borderColor, width: 1.w),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(items['icon'], color: AppColor.primaryColor),
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  AppColor.iconBackgroundColor,
                ),
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                ),
              ),
            ),
            Text(items['title'], style: AppStyle.black16w600),
            Text(
              AppStrings.tackAcc,
              style: AppStyle.black500W12.copyWith(color: AppColor.grayColor),
            ),
          ],
        ),
      ),
    );
  }
}
