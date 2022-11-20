import 'package:flutter/material.dart';
import 'package:uidesign/screens/stories/widget/progres_bar.dart';

class StoryBar extends StatelessWidget {
  const StoryBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      child: Row(
        children: const [
          Expanded(
            child: MyProgressBarIndicator(percentWacted: 0.2),
          ),
          Expanded(
            child: MyProgressBarIndicator(percentWacted: 0.2),
          ),
          Expanded(
            child: MyProgressBarIndicator(percentWacted: 0.2),
          ),
        ],
      ),
    );
  }
}
