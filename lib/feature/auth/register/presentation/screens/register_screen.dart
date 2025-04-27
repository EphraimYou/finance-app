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
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _userNameController = TextEditingController();
  final _conPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool passwordVisible = true;
  bool conPasswordVisible = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _userNameController.dispose();
    _conPasswordController.dispose();
    super.dispose();
  }

  void _conPasswordIconVisibility() {
    setState(() {
      conPasswordVisible = !conPasswordVisible;
    });
  }

  void _passwordIconVisibility() {
    setState(() {
      passwordVisible = !passwordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.fromLTRB(22.w, 22.h, 22.w, 0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomBackButton(),
                SizedBox(height: 28.h),
                Text(
                  AppStrings.registerMainTitle,
                  style: AppStyle.primaryHeadLineStyle,
                ),
                SizedBox(height: 32.h),
                Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  key: _formKey,
                  child: Column(
                    spacing: 12.h,
                    children: [
                      CustomTextFormField(
                        hintText: AppStrings.userName,
                        validator:
                            (value) => ValidateInput.validateUserName(value),
                        controller: _userNameController,
                      ),
                      CustomTextFormField(
                        hintText: AppStrings.email,
                        validator:
                            (value) => ValidateInput.validateEmail(value),
                        controller: _emailController,
                      ),
                      CustomTextFormField(
                        isPassword: true,
                        obscureText: passwordVisible,
                        onToggleObscureText: _passwordIconVisibility,
                        hintText: AppStrings.password,
                        validator:
                            (value) => ValidateInput.validatePassword(value),
                        controller: _passwordController,
                      ),
                      CustomTextFormField(
                        isPassword: true,
                        obscureText: conPasswordVisible,
                        onToggleObscureText: _conPasswordIconVisibility,
                        hintText: AppStrings.comPassword,
                        validator:
                            (value) => ValidateInput.validateConfirmPassword(
                              value,
                              _passwordController.text,
                            ),
                        controller: _conPasswordController,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30.h),
                DefaultButton(
                  text: AppStrings.register,
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      debugPrint('valid');
                    }
                  },
                ),
                SizedBox(height: 35.h),
                DividerWidget(text: AppStrings.loginWith),
                SizedBox(height: 22.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SocialButton(onTap: () {}, imagePath: AppAssets.facebook),
                    SocialButton(onTap: () {}, imagePath: AppAssets.google),
                    SocialButton(onTap: () {}, imagePath: AppAssets.apple),
                  ],
                ),
                SizedBox(height: 40.h),
                TextNavigator(
                  description: AppStrings.haveAccount,
                  buttonTitle: AppStrings.login,
                  onTap: () => Navigator.pushNamed(context, AppRoutes.login),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
