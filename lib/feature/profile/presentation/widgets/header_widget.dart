import 'package:finance_app/core/components/leading_icon_widget.dart';
import 'package:finance_app/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileHeaderWidget extends StatelessWidget {
  final IconData leadingIcon;
  final IconData actionIcon;
  final String title;

  const ProfileHeaderWidget({
    super.key,
    required this.leadingIcon,
    required this.actionIcon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        LeadingIconWidget(icon: leadingIcon),
        Text(title, style: AppStyle.black16w600.copyWith(fontSize: 18.sp)),
        LeadingIconWidget(icon: actionIcon),
      ],
    );
  }
}
