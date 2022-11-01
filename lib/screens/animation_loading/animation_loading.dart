import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';
import 'package:lottie/lottie.dart';
import 'package:uidesign/core/themes/app_themes.dart';

class AniimationLoading extends StatefulWidget {
  const AniimationLoading({super.key});

  @override
  State<AniimationLoading> createState() => _AniimationLoadingState();
}

class _AniimationLoadingState extends State<AniimationLoading>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 10),
    );

    _animationController.addListener(() => setState(() {}));
    _animationController.repeat();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final percentage = _animationController.value * 100;
    return Scaffold(
      backgroundColor: kGray3Color,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Lottie.network(
            //   'https://assets7.lottiefiles.com/packages/lf20_jvtpl16e.json',
            //   height: 80,
            //   width: 80,
            // ),
            // Container(
            //   margin: EdgeInsets.only(
            //     top: 20,
            //   ),
            //   width: double.infinity,
            //   height: 40.0,
            //   padding: EdgeInsets.symmetric(horizontal: 24.0),
            //   child: LiquidLinearProgressIndicator(
            //     value: _animationController.value,
            //     backgroundColor: Colors.white,
            //     valueColor:
            //         AlwaysStoppedAnimation(Color.fromARGB(255, 5, 10, 39)),
            //     borderRadius: 12.0,
            //     center: Text(
            //       "${percentage.toStringAsFixed(0)}%",
            //       style: TextStyle(
            //         color: Color.fromARGB(255, 18, 88, 107),
            //         fontSize: 20.0,
            //         fontWeight: FontWeight.bold,
            //       ),
            //     ),
            //   ),
            // ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Lottie.network(
                    'https://assets7.lottiefiles.com/packages/lf20_RWZde1.json',
                    width: 140,
                    height: 140,
                  ),
                  LiquidCustomProgressIndicator(
                    value: _animationController.value,
                    direction: Axis.vertical,
                    backgroundColor: Colors.white,
                    valueColor: AlwaysStoppedAnimation(
                        Color.fromARGB(255, 233, 12, 145)),
                    shapePath: _buildHeartPath(),
                    center: Text(
                      "${percentage.toStringAsFixed(0)}%",
                      style: TextStyle(
                        color: Colors.lightGreenAccent,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Center(
            //   child: SizedBox(
            //     width: 150.0,
            //     height: 150.0,
            //     child: LiquidCircularProgressIndicator(
            //       value: _animationController.value,
            //       backgroundColor: Colors.white,
            //       valueColor: AlwaysStoppedAnimation(Colors.blue),
            //       center: Column(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
            //           Text(
            //             "${percentage.toStringAsFixed(0)}%",
            //             style: TextStyle(
            //               color: Colors.lightBlueAccent,
            //               fontSize: 20.0,
            //               fontWeight: FontWeight.bold,
            //             ),
            //           ),
            //           Lottie.network(
            //             'https://assets7.lottiefiles.com/packages/lf20_s4tubmwg.json',
            //             width: 120,
            //             height: 120,
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  Path _buildHeartPath() {
    return Path()
      ..moveTo(55, 15)
      ..cubicTo(55, 12, 50, 0, 30, 0)
      ..cubicTo(0, 0, 0, 37.5, 0, 37.5)
      ..cubicTo(0, 55, 20, 77, 55, 95)
      ..cubicTo(90, 77, 110, 55, 110, 37.5)
      ..cubicTo(110, 37.5, 110, 0, 80, 0)
      ..cubicTo(65, 0, 55, 12, 55, 15)
      ..close();
  }
}
