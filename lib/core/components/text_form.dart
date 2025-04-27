import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:finance_app/core/utils/app_color.dart';
import 'package:finance_app/core/utils/style.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final bool autofocus;
  final bool obscureText;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final VoidCallback? onToggleObscureText;
  final bool isPassword;

  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.validator,
    required this.controller,
    this.obscureText = false,
    this.autofocus = false,
    this.onToggleObscureText,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: autofocus,
      controller: controller,
      validator: validator,
      obscureText: obscureText,
      cursorColor: AppColor.primaryColor,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColor.formColor,
        labelText: hintText,
        labelStyle: AppStyle.subtitleStyle.copyWith(
          color: AppColor.textFormColor,
        ),
        suffixIcon:
            isPassword
                ? IconButton(
                  icon: Icon(
                    obscureText ? Icons.visibility : Icons.visibility_off,
                    size: 22,
                    color: const Color(0xFF6A707C),
                  ),
                  onPressed: onToggleObscureText,
                )
                : null,
        contentPadding: EdgeInsets.all(18.h),
        enabledBorder: _buildInputBorder(AppColor.borderColor),
        focusedErrorBorder: _buildInputBorder(Colors.red, width: 2.w),
        errorBorder: _buildInputBorder(Colors.red, width: 2.w),
        focusedBorder: _buildInputBorder(AppColor.primaryColor, width: 2.w),
      ),
    );
  }

  OutlineInputBorder _buildInputBorder(Color color, {double width = 1.0}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.r),
      borderSide: BorderSide(color: color, width: width),
    );
  }
}
