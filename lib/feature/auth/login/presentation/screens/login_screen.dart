import 'package:finance_app/config/routes/app_routes.dart';
import 'package:finance_app/core/components/back_button.dart';
import 'package:finance_app/core/components/default_button.dart';
import 'package:finance_app/core/components/social_button.dart';
import 'package:finance_app/core/components/text_form.dart';
import 'package:finance_app/core/components/text_navigator.dart';
import 'package:finance_app/core/functions/validate_input.dart';
import 'package:finance_app/core/utils/app_assets.dart';
import 'package:finance_app/core/utils/app_strings.dart';
import 'package:finance_app/core/utils/style.dart';
import 'package:finance_app/feature/auth/login/presentation/widgets/Divider_widget.dart';
import 'package:finance_app/feature/auth/login/presentation/widgets/forget_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isVisible = true;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  void _togglePassword() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
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
                AppStrings.loginMainTitle,
                style: AppStyle.primaryHeadLineStyle,
              ),
              SizedBox(height: 32.h),
              Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                key: _formKey,
                child: Column(
                  spacing: 15.h,
                  children: [
                    CustomTextFormField(
                      hintText: AppStrings.emailHint,
                      validator: (value) => ValidateInput.validateEmail(value),
                      controller: _emailController,
                    ),
                    CustomTextFormField(
                      hintText: AppStrings.passwordHint,
                      validator:
                          (value) => ValidateInput.validatePassword(value),
                      controller: _emailController,
                      isPassword: true,
                      onToggleObscureText: _togglePassword,
                    ),
                  ],
                ),
              ),
              ForgetPassword(onTap: () {}),
              DefaultButton(
                text: AppStrings.login,
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    debugPrint('valid');
                  }
                },
              ),
              SizedBox(height: 35.h),
              DividerWidget(text: AppStrings.loginWith),
              SizedBox(height: 30.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SocialButton(
                    imagePath: AppAssets.facebook,
                    onTap: () {
                      debugPrint('facebook');
                    },
                  ),
                  SocialButton(
                    imagePath: AppAssets.google,
                    onTap: () {
                      debugPrint('google');
                    },
                  ),
                  SocialButton(
                    imagePath: AppAssets.apple,
                    onTap: () {
                      debugPrint('Apple');
                    },
                  ),
                ],
              ),
              // SizedBox(height: 150.h),
              Spacer(),
              TextNavigator(
                description: AppStrings.dontHaveAccount,
                buttonTitle: AppStrings.register,
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.register);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
