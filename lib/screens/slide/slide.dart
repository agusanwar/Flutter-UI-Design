import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

class SlideScreens extends StatefulWidget {
  const SlideScreens({super.key});

  @override
  State<SlideScreens> createState() => _SlideScreensState();
}

class _SlideScreensState extends State<SlideScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SlideAction(
          borderRadius: 20,
          elevation: 0,
          innerColor: Colors.blue[700],
          outerColor: Colors.blue[300],
          sliderButtonIcon: Icon(
            Icons.lock,
            color: Colors.white,
          ),
          text: 'Slide to Lock',
          textStyle: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
          sliderRotate: false,
          onSubmit: () {},
        ),
      ),
    );
  }
}
