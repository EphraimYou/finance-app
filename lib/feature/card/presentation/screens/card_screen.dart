import 'package:finance_app/core/utils/app_color.dart';
import 'package:finance_app/core/utils/app_strings.dart';
import 'package:finance_app/feature/card/presentation/widgets/card_item_widget.dart';
import 'package:finance_app/feature/profile/presentation/widgets/header_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardScreen extends StatelessWidget {
  CardScreen({super.key});
  final List<Map<String, dynamic>> cards = [
    {
      'title': 'M-Card',
      'subtitle': '**** **** **** 1234',
      'color': AppColor.thirdCardColor,
      'amount': '2000 EG',
    },
    {
      'title': 'X-Card',
      'subtitle': '**** **** **** 1234',
      'amount': '44000 EG',
      'color': AppColor.secondCardColor,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          ProfileHeaderWidget(
            leadingIcon: Icons.arrow_back_ios_new,
            actionIcon: Icons.more_horiz,
            title: AppStrings.allCards,
          ),
          SizedBox(height: 20.h),
          ...cards.map((card) => CardItemWidget(card: card)),
        ],
      ),
    );
  }
}
