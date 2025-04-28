import 'package:finance_app/core/utils/app_color.dart';
import 'package:finance_app/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OtpInputFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final int lastIndex;
  final FormFieldValidator<String>? validation;

  const OtpInputFieldWidget({
    super.key,
    required this.controller,
    required this.lastIndex,
    required this.validation,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.h,
      width: 70.w,
      child: TextFormField(
        controller: controller,
        onChanged: (value) {
          if (value.length == 1 && lastIndex != 3) {
            FocusScope.of(context).nextFocus();
          }
        },
        validator: validation,
        cursorColor: AppColor.primaryColor,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
        style: AppStyle.primaryHeadLineStyle.copyWith(
          fontWeight: FontWeight.w700,
          fontSize: 22.sp,
        ),

        decoration: InputDecoration(
          filled: true,
          fillColor: AppColor.formColor,
          labelStyle: AppStyle.subtitleStyle.copyWith(
            color: AppColor.textFormColor,
          ),
          errorStyle: const TextStyle(
            height: 0,
            fontSize: 0,
          ), // hide error text
          enabledBorder: _buildInputBorder(AppColor.borderColor),
          focusedErrorBorder: _buildInputBorder(Colors.red, width: 2.w),
          errorBorder: _buildInputBorder(Colors.red, width: 2.w),
          focusedBorder: _buildInputBorder(AppColor.primaryColor, width: 2.w),
        ),
      ),
    );
  }
}

OutlineInputBorder _buildInputBorder(Color color, {double width = 1.0}) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.r),
    borderSide: BorderSide(color: color, width: width),
  );
}
