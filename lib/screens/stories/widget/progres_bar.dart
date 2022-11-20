import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class MyProgressBarIndicator extends StatelessWidget {
  final double percentWacted;

  const MyProgressBarIndicator({
    Key? key,
    required this.percentWacted,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: LinearPercentIndicator(
        percent: percentWacted,
        lineHeight: 15,
        center: Text("100%"),
        backgroundColor: Colors.grey,
        progressColor: Colors.blueAccent,
        animationDuration: 2000,
        animation: true,
        barRadius: Radius.circular(10),
      ),
    );
  }
}
