import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:uidesign/core/themes/app_themes.dart';

class LineReportChart extends StatelessWidget {
  const LineReportChart({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.2,
      child: LineChart(
        LineChartData(
          gridData: FlGridData(show: false),
          borderData: FlBorderData(show: false),
          titlesData: FlTitlesData(show: false),
          lineBarsData: [
            LineChartBarData(
              spots: getSport(),
              isCurved: true,
              dotData: FlDotData(show: false),
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                stops: const [
                  0.1,
                  0.4,
                  0.6,
                  0.9,
                ],
                colors: const [
                  Colors.blueAccent,
                  Colors.red,
                  Colors.pinkAccent,
                  Colors.teal,
                ],
              ),
              barWidth: 3,
            ),
          ],
        ),
      ),
    );
  }

  List<FlSpot> getSport() {
    return [
      FlSpot(0, .5),
      FlSpot(1, .6),
      FlSpot(2, 1.2),
      FlSpot(3, .1),
      FlSpot(4, .5),
      FlSpot(5, .3),
      FlSpot(6, 1.5),
      FlSpot(7, 1.3),
      FlSpot(8, 1.5),
      FlSpot(9, .6),
      FlSpot(10, 1.6),
    ];
  }
}
