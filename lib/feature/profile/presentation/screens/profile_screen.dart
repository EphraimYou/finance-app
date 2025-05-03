import 'package:finance_app/core/utils/app_assets.dart';
import 'package:finance_app/core/utils/app_strings.dart';
import 'package:finance_app/feature/profile/presentation/widgets/header_widget.dart';
import 'package:finance_app/feature/profile/presentation/widgets/prifile_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreenNew extends StatelessWidget {
  ProfileScreenNew({super.key});

  final List<Map<String, dynamic>> _items = [
    {'title': AppStrings.fullNameHint, 'subtitle': AppStrings.name},
    {'title': AppStrings.email, 'subtitle': AppStrings.emailAddress},
    {'title': AppStrings.phoneHint, 'subtitle': AppStrings.phoneNumber},
    {'title': AppStrings.addressHint, 'subtitle': AppStrings.address},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          ProfileHeaderWidget(
            leadingIcon: Icons.arrow_back_ios_sharp,
            actionIcon: Icons.edit_square,
            title: AppStrings.myProfile,
          ),
          SizedBox(height: 50.h),
          Align(
            alignment: Alignment.center,
            child: CircleAvatar(
              radius: 50.r,
              backgroundImage: const AssetImage(AppAssets.profile),
            ),
          ),
          SizedBox(height: 9.h),
          ..._items.map((item) => ProfileItem(items: item)),
        ],
      ),
    );
  }
}
