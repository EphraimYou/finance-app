import 'package:finance_app/core/utils/app_assets.dart';
import 'package:finance_app/core/utils/app_color.dart';
import 'package:finance_app/core/utils/app_strings.dart';
import 'package:finance_app/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardItemWidget extends StatelessWidget {
  final Map<String, dynamic> card;
  const CardItemWidget({super.key, required this.card});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.h),
      child: Stack(
        children: [
          Container(
            height: 200.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: card['color'],
              borderRadius: BorderRadius.circular(16.r),
            ),
          ),
          Positioned(top: 0, left: 0, child: Image.asset(AppAssets.layer2)),
          Positioned(top: 100.h, child: Image.asset(AppAssets.layer1)),
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      Text(card['title'], style: AppStyle.white700W12),
                      const Spacer(),
                      Image.asset(AppAssets.visa, height: 20),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppStrings.balance,
                        style: AppStyle.subtitleStyle.copyWith(
                          color: AppColor.cardColor,
                        ),
                      ),
                      Text(
                        card['amount'],
                        style: AppStyle.white700W12.copyWith(fontSize: 24.sp),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(card['subtitle'], style: AppStyle.white500W16),
                      const Spacer(),
                      Text(
                        AppStrings.data,
                        style: AppStyle.white500W16.copyWith(
                          fontSize: 12.sp,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
