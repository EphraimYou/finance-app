import 'package:finance_app/config/routes/app_routes.dart';
import 'package:finance_app/core/components/back_button.dart';
import 'package:finance_app/core/components/default_button.dart';
import 'package:finance_app/core/components/text_form.dart';
import 'package:finance_app/core/functions/validate_input.dart';
import 'package:finance_app/core/utils/app_strings.dart';
import 'package:finance_app/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  late TextEditingController _passwordController;
  late TextEditingController _confirmPasswordController;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
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
                AppStrings.newPassword,
                style: AppStyle.primaryHeadLineStyle,
              ),
              Text(
                AppStrings.changePasswordSubtitle,
                style: AppStyle.subtitleStyle,
              ),
              SizedBox(height: 32.h),
              Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                key: _formKey,
                child: Column(
                  spacing: 15.h,
                  children: [
                    CustomTextFormField(
                      hintText: AppStrings.passwordHint,
                      validator:
                          (value) => ValidateInput.validatePassword(value),
                      controller: _passwordController,
                    ),
                    CustomTextFormField(
                      hintText: AppStrings.confirmPasswordHint,
                      validator:
                          (value) => ValidateInput.validatePassword(value),
                      controller: _confirmPasswordController,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 38.h),
              DefaultButton(
                text: AppStrings.resetPassword,
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.of(context).pushNamed(AppRoutes.changedPassword);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
