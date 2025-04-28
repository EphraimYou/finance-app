import 'package:finance_app/config/routes/app_routes.dart';
import 'package:finance_app/core/components/default_button.dart';
import 'package:finance_app/core/utils/app_assets.dart';
import 'package:finance_app/core/utils/app_strings.dart';
import 'package:finance_app/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordChangedScreen extends StatelessWidget {
  const PasswordChangedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(22.w, 22.h, 22.w, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppAssets.success, height: 100.h, width: 100.w),
              SizedBox(height: 35.h),
              Text(
                AppStrings.passwordChanged,
                style: AppStyle.primaryHeadLineStyle.copyWith(fontSize: 26.sp),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Text(
                  AppStrings.changedPasswordSuccessSubTitle,
                  textAlign: TextAlign.center,
                  style: AppStyle.subtitleStyle,
                ),
              ),
              SizedBox(height: 40.h),
              DefaultButton(
                text: AppStrings.backToLogin,
                onPressed:
                    () => Navigator.pushReplacementNamed(
                      context,
                      AppRoutes.login,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
