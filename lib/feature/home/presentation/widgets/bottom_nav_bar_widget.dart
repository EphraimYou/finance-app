import 'package:finance_app/core/utils/app_assets.dart';
import 'package:finance_app/core/utils/app_color.dart';
import 'package:finance_app/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavBarWidget extends StatelessWidget {
  final int currentIndex;
  final Function(int)? onTap;
  const BottomNavBarWidget({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      iconSize: 24,
      onTap: onTap,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_filled),
          label: AppStrings.home,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            AppAssets.statistic,
            height: 24.h,
            width: 24.w,
            color: currentIndex == 1 ? AppColor.primaryColor : null,
          ),

          label: AppStrings.statistics,
        ),
        BottomNavigationBarItem(
          icon: Container(
            width: 56.w,
            height: 56.h,
            decoration: BoxDecoration(
              color: AppColor.primaryColor,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.add_box_rounded,
              color: AppColor.witheColor,
              size: 24,
            ),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_balance_wallet_outlined),
          label: AppStrings.card,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: AppStrings.profile,
        ),
      ],
    );
  }
}
