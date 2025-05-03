import 'package:finance_app/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileItem extends StatelessWidget {
  final Map<String, dynamic> items;
  const ProfileItem({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 6.h,
      children: [
        Text(items['title'], style: AppStyle.subtitleStyle),
        Text(items['subtitle'], style: AppStyle.black16w600),
        Divider(),
        SizedBox(height: 10.h),
      ],
    );
  }
}
