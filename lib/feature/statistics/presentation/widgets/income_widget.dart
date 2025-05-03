import 'package:finance_app/core/utils/app_color.dart';
import 'package:finance_app/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IncomeWidget extends StatelessWidget {
  final Map<String, dynamic> data;
  const IncomeWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 156.h,
      width: 142.w,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColor.witheColor,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: AppColor.borderColor, width: 1.w),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(data['icon'], color: AppColor.primaryColor),
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
          Text(data['amount'], style: AppStyle.black16w600),
          Text(
            data['title'],
            style: AppStyle.black500W12.copyWith(color: AppColor.grayColor),
          ),
        ],
      ),
    );
  }
}
