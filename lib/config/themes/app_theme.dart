import 'package:finance_app/core/utils/app_color.dart';
import 'package:finance_app/core/utils/constants.dart';
import 'package:finance_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    useMaterial3: true,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedIconTheme: const IconThemeData(color: AppColor.primaryColor),
      type: BottomNavigationBarType.shifting,
      selectedItemColor: AppColor.primaryColor,
      unselectedItemColor: Colors.grey,
      elevation: 1,
    ),
    primaryColor: AppColor.primaryColor,
    scaffoldBackgroundColor: AppColor.witheColor,
    fontFamily: Constants.mainFont,
    textTheme: TextTheme(
      headlineLarge: AppStyle.primaryHeadLineStyle,
      headlineMedium: AppStyle.primaryHeadLineStyle,
    ),
    colorScheme: ColorScheme.fromSeed(seedColor: AppColor.primaryColor),
    buttonTheme: ButtonThemeData(
      buttonColor: AppColor.primaryColor,
      disabledColor: AppColor.secondaryColor,
    ),
  );
}
