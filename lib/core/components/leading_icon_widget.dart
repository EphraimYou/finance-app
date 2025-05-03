import 'package:finance_app/core/utils/app_color.dart';
import 'package:flutter/material.dart';

class LeadingIconWidget extends StatelessWidget {
  final IconData icon;
  const LeadingIconWidget({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return IconButton(
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
      icon: Icon(icon),
    );
  }
}
