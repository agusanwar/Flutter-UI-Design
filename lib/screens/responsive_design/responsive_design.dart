import 'package:flutter/material.dart';
import 'package:uidesign/screens/responsive_design/widget/responsive/desktop_body.dart';
import 'package:uidesign/screens/responsive_design/widget/responsive/mobile_body.dart';
import 'package:uidesign/screens/responsive_design/widget/responsive/responsive_layout.dart';

class ResponsiveDesignScreens extends StatefulWidget {
  const ResponsiveDesignScreens({super.key});

  @override
  State<ResponsiveDesignScreens> createState() =>
      _ResponsiveDesignScreensState();
}

class _ResponsiveDesignScreensState extends State<ResponsiveDesignScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        mobileBody: MobileBody(),
        destopBody: DesktopBody(),
      ),
    );
  }
}
