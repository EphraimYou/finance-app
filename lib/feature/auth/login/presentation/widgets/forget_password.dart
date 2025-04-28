// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:finance_app/core/utils/app_color.dart';
import 'package:finance_app/core/utils/app_strings.dart';

class ForgetPassword extends StatelessWidget {
  final Function() onTap;
  const ForgetPassword({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        style: TextButton.styleFrom(foregroundColor: AppColor.primaryColor),
        onPressed: onTap,
        child: const Text(AppStrings.forgotPassword),
      ),
    );
  }
}
