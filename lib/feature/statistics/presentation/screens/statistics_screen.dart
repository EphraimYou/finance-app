import 'package:finance_app/core/utils/app_strings.dart';
import 'package:finance_app/feature/profile/presentation/widgets/header_widget.dart';
import 'package:finance_app/feature/statistics/presentation/widgets/bar_chart_widget.dart';
import 'package:finance_app/feature/statistics/presentation/widgets/income_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StatisticsScreen extends StatelessWidget {
  final List<Map<String, dynamic>> _data = [
    {
      'title': AppStrings.income,
      'amount': '15000 EG',
      'icon': Icons.file_download_outlined,
    },
    {
      'title': AppStrings.outcome,
      'amount': '35000 EG',
      'icon': Icons.file_upload_outlined,
    },
  ];

  StatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          ProfileHeaderWidget(
            leadingIcon: Icons.arrow_back_ios_new,
            actionIcon: Icons.more_horiz,
            title: AppStrings.reload,
          ),
          SizedBox(height: 20.h),
          BarChartSample3(),
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [..._data.map((item) => IncomeWidget(data: item))],
          ),
        ],
      ),
    );
  }
}
