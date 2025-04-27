import 'package:finance_app/config/routes/app_routes.dart';
import 'package:finance_app/core/components/default_button.dart';
import 'package:finance_app/core/utils/app_assets.dart';
import 'package:finance_app/core/utils/app_color.dart';
import 'package:finance_app/core/utils/app_strings.dart';
import 'package:finance_app/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            AppAssets.welcome,
            fit: BoxFit.cover,
            height: 570.h,
            width: double.infinity,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(22.0),
              child: Column(
                spacing: 15.h,
                children: [
                  DefaultButton(
                    text: AppStrings.login,
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoutes.login);
                    },
                  ),
                  DefaultButton(
                    text: AppStrings.register,
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoutes.register);
                    },
                    color: Colors.white,
                    border: 1,
                    textColor: AppColor.primaryColor,
                  ),

                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoutes.register);
                    },
                    child: Text(
                      AppStrings.guest,
                      style: AppStyle.textButtonStyle.copyWith(
                        decoration: TextDecoration.underline,
                        color: AppColor.darkColor,
                      ),
                    ),
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
