import 'package:finance_app/config/routes/app_routes.dart';
import 'package:finance_app/feature/auth/login/presentation/screens/login_screen.dart';
import 'package:finance_app/feature/auth/otp/presentation/screens/forgot_password_screen.dart';
import 'package:finance_app/feature/auth/register/presentation/screens/register_screen.dart';
// import 'package:finance_app/feature/onbording/welcome_screen.dart';
import 'package:flutter/material.dart';

class RouterGenerator {
  static Route routeGenerator(RouteSettings setting) {
    // final arg = setting.arguments;
    switch (setting.name) {
      case AppRoutes.onBoarding:
        return MaterialPageRoute(builder: (context) => const RegisterScreen());
      case AppRoutes.login:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
      case AppRoutes.register:
        return MaterialPageRoute(builder: (context) => const RegisterScreen());
      case AppRoutes.forgetPassword:
        return MaterialPageRoute(
          builder: (context) => const ForgotPasswordScreen(),
        );
      default:
        return MaterialPageRoute(builder: (context) => const PageNotFound());
    }
  }
}

class PageNotFound extends StatelessWidget {
  const PageNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page Not Found')),
      body: Center(child: Text('404')),
    );
  }
}
