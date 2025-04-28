import 'package:finance_app/config/routes/app_routes.dart';
import 'package:finance_app/core/components/back_button.dart';
import 'package:finance_app/core/components/default_button.dart';
import 'package:finance_app/core/components/text_navigator.dart';
import 'package:finance_app/core/functions/validate_input.dart';
import 'package:finance_app/core/utils/app_strings.dart';
import 'package:finance_app/core/utils/style.dart';
import 'package:finance_app/feature/auth/otp/presentation/widgets/otp_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  late List<TextEditingController> controllers;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    controllers = List.generate(4, (index) => TextEditingController());
    super.initState();
  }

  @override
  void dispose() {
    for (var controller in controllers) {
      controller.dispose();
    }
    // FocusNode.focusScope?.unfocus();
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
              Text(AppStrings.otp, style: AppStyle.primaryHeadLineStyle),
              Text(AppStrings.otpSubTitle, style: AppStyle.subtitleStyle),
              SizedBox(height: 32.h),
              Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                key: _formKey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ...List.generate(
                      4,
                      (index) => OtpInputFieldWidget(
                        controller: controllers[index],
                        lastIndex: index,
                        validation: (value) => ValidateInput.validateOTP(value),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 38.h),
              DefaultButton(
                text: AppStrings.verify,
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.of(context).pushNamed(AppRoutes.changePassword);
                  }
                },
              ),
              Spacer(),
              TextNavigator(
                description: AppStrings.dontReceivedCode,
                buttonTitle: AppStrings.resend,
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
