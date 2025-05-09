import 'package:finance_app/core/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class _BarChart extends StatelessWidget {
  const _BarChart();

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        barTouchData: barTouchData,
        titlesData: titlesData,
        borderData: borderData,
        barGroups: barGroups,
        gridData: const FlGridData(show: true, drawVerticalLine: false),
        alignment: BarChartAlignment.spaceAround,
        maxY: 20,
      ),
    );
  }

  BarTouchData get barTouchData => BarTouchData(
    enabled: false,
    touchTooltipData: BarTouchTooltipData(
      getTooltipColor: (group) => Colors.transparent,
      tooltipPadding: EdgeInsets.zero,
      tooltipMargin: 8,
      getTooltipItem: (
        BarChartGroupData group,
        int groupIndex,
        BarChartRodData rod,
        int rodIndex,
      ) {
        return BarTooltipItem(
          rod.toY.round().toString(),
          const TextStyle(
            color: AppColor.grayColor,
            fontWeight: FontWeight.bold,
          ),
        );
      },
    ),
  );

  Widget getTitles(double value, TitleMeta meta) {
    final style = TextStyle(
      color: AppColor.darkGrayColor,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
    String text;
    switch (value.toInt()) {
      case 0:
        text = 'Jan';
        break;
      case 1:
        text = 'Feb';
        break;
      case 2:
        text = 'Mar';
        break;
      case 3:
        text = 'Apr';
        break;
      case 4:
        text = 'May';
        break;
      case 5:
        text = 'Jun';
        break;
      case 6:
        text = 'Jul';
        break;
      default:
        text = '';
        break;
    }
    return SideTitleWidget(
      meta: meta,
      space: 4,
      child: Text(text, style: style),
    );
  }

  FlTitlesData get titlesData => FlTitlesData(
    show: true,
    bottomTitles: AxisTitles(
      sideTitles: SideTitles(
        showTitles: true,
        reservedSize: 30,
        getTitlesWidget: getTitles,
      ),
    ),
    leftTitles: AxisTitles(
      sideTitles: SideTitles(
        showTitles: true,
        interval: 2,
        reservedSize: 30,
        getTitlesWidget:
            (value, meta) => Text(
              '${value.toInt()} k',
              style: const TextStyle(color: AppColor.grayColor),
            ),
      ),
    ),
    topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
    rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
  );

  FlBorderData get borderData => FlBorderData(show: false);

  List<BarChartGroupData> get barGroups => [
    BarChartGroupData(
      x: 0,
      barRods: [
        BarChartRodData(toY: 12, color: AppColor.primaryColor),
        BarChartRodData(toY: 8, color: AppColor.darkColor),
      ],
    ),
    BarChartGroupData(
      x: 1,
      barRods: [
        BarChartRodData(toY: 10, color: AppColor.primaryColor),
        BarChartRodData(toY: 6, color: AppColor.darkColor),
      ],
    ),
    BarChartGroupData(
      x: 2,
      barRods: [
        BarChartRodData(toY: 14, color: AppColor.primaryColor),
        BarChartRodData(toY: 10, color: AppColor.darkColor),
      ],
    ),
    BarChartGroupData(
      x: 3,
      barRods: [
        BarChartRodData(toY: 15, color: AppColor.primaryColor),
        BarChartRodData(toY: 11, color: AppColor.darkColor),
      ],
    ),
    BarChartGroupData(
      x: 4,
      barRods: [
        BarChartRodData(toY: 13, color: AppColor.primaryColor),
        BarChartRodData(toY: 9, color: AppColor.darkColor),
      ],
    ),
    BarChartGroupData(
      x: 5,
      barRods: [
        BarChartRodData(toY: 10, color: AppColor.primaryColor),
        BarChartRodData(toY: 6, color: AppColor.darkColor),
      ],
    ),
    BarChartGroupData(
      x: 6,
      barRods: [
        BarChartRodData(toY: 16, color: AppColor.primaryColor),
        BarChartRodData(toY: 12, color: AppColor.darkColor),
      ],
    ),
  ];
}

class BarChartSample3 extends StatefulWidget {
  const BarChartSample3({super.key});

  @override
  State<StatefulWidget> createState() => BarChartSample3State();
}

class BarChartSample3State extends State<BarChartSample3> {
  @override
  Widget build(BuildContext context) {
    return const AspectRatio(aspectRatio: 1.6, child: _BarChart());
  }
}
