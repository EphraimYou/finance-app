import 'package:finance_app/core/utils/app_strings.dart';

class ValidateInput {
  ValidateInput._();
  static String? validateUserName(String? username) {
    if (username == null || username.isEmpty) {
      return AppStrings.fieldIsEmpty;
    }
    return null;
  }

  static String? validateEmail(String? email) {
    if (email == null || email.isEmpty) {
      return AppStrings.fieldIsEmpty;
    } else if (!email.contains("@")) {
      return AppStrings.emailNotValid;
    }
    return null;
  }

  static String? validateConfirmPassword(
    String? password,
    String? confirmPassword,
  ) {
    if (password == null || password.isEmpty) {
      return AppStrings.fieldIsEmpty;
    } else if (password != confirmPassword) {
      return AppStrings.passwordNotMatching;
    }
    return null;
  }

  static String? validatePassword(String? password) {
    if (password == null || password.isEmpty) {
      return AppStrings.fieldIsEmpty;
    } else if (password.length < 8) {
      return AppStrings.passwordTooShort;
    }
    return null;
  }
}
