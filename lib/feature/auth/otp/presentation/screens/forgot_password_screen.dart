import 'package:finance_app/config/routes/app_routes.dart';
import 'package:finance_app/core/components/back_button.dart';
import 'package:finance_app/core/components/default_button.dart';
import 'package:finance_app/core/components/text_form.dart';
import 'package:finance_app/core/components/text_navigator.dart';
import 'package:finance_app/core/functions/validate_input.dart';
import 'package:finance_app/core/utils/app_strings.dart';
import 'package:finance_app/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.fromLTRB(22.w, 22.h, 22.w, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomBackButton(),
              SizedBox(height: 28.h),
              Text(
                AppStrings.forgotPassword,
                style: AppStyle.primaryHeadLineStyle,
              ),
              Text(
                AppStrings.forgotPassSubTitle,
                style: AppStyle.subtitleStyle,
              ),
              SizedBox(height: 32.h),
              CustomTextFormField(
                hintText: AppStrings.emailHint,
                validator: (value) => ValidateInput.validateEmail(value),
                controller: _emailController,
              ),
              SizedBox(height: 38.h),
              DefaultButton(text: AppStrings.sendCode, onPressed: () {}),
              Spacer(),
              TextNavigator(
                description: AppStrings.rememberPassword,
                buttonTitle: AppStrings.login,
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.login);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
