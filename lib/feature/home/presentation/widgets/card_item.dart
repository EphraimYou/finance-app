import 'package:finance_app/core/utils/app_assets.dart';
import 'package:finance_app/core/utils/app_color.dart';
import 'package:finance_app/core/utils/app_strings.dart';
import 'package:finance_app/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardItem extends StatelessWidget {
  final Color? color;
  const CardItem({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 207.w,
          height: 263.h,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(16.r),
          ),
        ),
        Positioned(
          left: 0,
          bottom: 0,
          child: Image.asset(
            AppAssets.layer2,
            width: 220.w,
            height: 220.h,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          left: 0,
          bottom: 0,
          child: Image.asset(
            AppAssets.layer2,
            width: 100.w,
            height: 100.h,
            fit: BoxFit.cover,
          ),
        ),
        Positioned.fill(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // Makes text fill width
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(AppStrings.xCard, style: AppStyle.white700W12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppStrings.balance,
                      style: AppStyle.subtitleStyle.copyWith(
                        color: AppColor.cardColor,
                        fontSize: 14.sp,
                      ),
                    ),
                    Text(
                      AppStrings.number,
                      style: AppStyle.white700W12.copyWith(fontSize: 20.sp),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(AppStrings.idNumber, style: AppStyle.white500W16),
                    const Spacer(),
                    Text(
                      AppStrings.data,
                      style: AppStyle.black500W12.copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
