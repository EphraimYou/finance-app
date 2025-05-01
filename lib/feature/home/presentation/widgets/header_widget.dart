import 'package:finance_app/core/utils/app_assets.dart';
import 'package:finance_app/core/utils/app_color.dart';
import 'package:finance_app/core/utils/app_strings.dart';
import 'package:finance_app/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(22.w, 19, 22.w, 0),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 24,
            backgroundImage: AssetImage(AppAssets.profile),
          ),
          const SizedBox(width: 11),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppStrings.welcome,
                style: AppStyle.black500W12.copyWith(color: AppColor.grayColor),
              ),
              Text(
                AppStrings.name,
                style: AppStyle.black16w600.copyWith(fontSize: 18.sp),
              ),
            ],
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            color: AppColor.primaryColor,
            iconSize: 24,
            style: ButtonStyle(
              shape: WidgetStatePropertyAll(
                const CircleBorder(
                  side: BorderSide(color: AppColor.grayColor, width: 0.5),
                ),
              ),
            ),
            icon: const Icon(Icons.notifications),
          ),
        ],
      ),
    );
  }
}
