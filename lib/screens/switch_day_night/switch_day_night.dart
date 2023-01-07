import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lottie/lottie.dart';
import 'package:uidesign/core/themes/app_themes.dart';

class SwitchDayNight extends StatefulWidget {
  const SwitchDayNight({super.key});

  @override
  State<SwitchDayNight> createState() => _SwitchDayNightState();
}

class _SwitchDayNightState extends State<SwitchDayNight> {
  bool isSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedSwitcher(
            duration: Duration(milliseconds: 500),
            child: AnimatedContainer(
              duration: Duration(milliseconds: 500),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    isSwitch == false ? HexColor('E0144C') : HexColor('2D033B'),
                    isSwitch == false ? HexColor('FFE15D') : HexColor('810CAB'),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Stack(
                children: [
                  AnimatedPositioned(
                    duration: Duration(milliseconds: 700),
                    bottom: isSwitch == false ? 5 : -500,
                    child: SizedBox(
                      height: 230,
                      width: 400,
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Lottie.network(
                                'https://assets5.lottiefiles.com/packages/lf20_xcvaucib.json'),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 130,
                              width: 130,
                              decoration: BoxDecoration(
                                color: kYellowColor,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.15,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/mountain.png'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned.fill(
            child: AnimatedSwitcher(
              duration: Duration(milliseconds: 500),
              child: AnimatedContainer(
                duration: Duration(milliseconds: 500),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: isSwitch == false
                    ? Colors.transparent
                    : Colors.black.withOpacity(0.5),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 60, left: 20),
            child: Positioned(
              height: 45,
              left: 18,
              child: SizedBox(
                width: 70,
                child: DayNightSwitcher(
                  dayBackgroundColor: Color.fromARGB(255, 255, 231, 153),
                  isDarkModeEnabled: isSwitch,
                  onStateChanged: (bool valeu) {
                    setState(() {
                      isSwitch = valeu;
                    });
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
