import 'package:finance_app/core/utils/app_color.dart';
import 'package:finance_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class TextNavigator extends StatelessWidget {
  final String description;
  final String buttonTitle;
  final Function() onTap;
  const TextNavigator({
    super.key,
    required this.description,
    required this.buttonTitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          description,
          style: AppStyle.textButtonStyle.copyWith(
            color: AppColor.primaryColor,
          ),
        ),
        TextButton(
          onPressed: onTap,
          child: Text(buttonTitle, style: AppStyle.textButtonStyle),
        ),
      ],
    );
  }
}
