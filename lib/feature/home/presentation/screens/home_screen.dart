import 'package:finance_app/core/utils/app_strings.dart';
import 'package:finance_app/feature/home/presentation/widgets/header_widget.dart';
import 'package:finance_app/feature/home/presentation/widgets/operation_item_widget.dart';
import 'package:finance_app/feature/home/presentation/widgets/slider_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Map<String, dynamic>> items = [
    {'title': AppStrings.sendMoney, 'icon': Icons.telegram},
    {'title': AppStrings.payBill, 'icon': Icons.account_balance_wallet_rounded},
    {'title': AppStrings.request, 'icon': Icons.telegram},
    {'title': AppStrings.contact, 'icon': Icons.people_alt},
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeaderWidget(),
          SizedBox(height: 20.h),
          const SliderWidget(),
          SizedBox(height: 20.h),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 22.w),

            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
            ),
            itemCount: items.length,
            itemBuilder:
                (context, index) => OperationItemWidget(items: items[index]),
          ),
        ],
      ),
    );
  }
}
