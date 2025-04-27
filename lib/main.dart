import 'package:finance_app/config/routes/app_routes.dart';
import 'package:finance_app/config/routes/router_generator.dart';
import 'package:finance_app/config/themes/app_theme.dart';
import 'package:finance_app/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: AppStrings.appName,
          theme: AppTheme.lightTheme,
          home: child,
          initialRoute: AppRoutes.forgetPassword,
          onGenerateRoute: RouterGenerator.routeGenerator,
        );
      },
    );
  }
}
