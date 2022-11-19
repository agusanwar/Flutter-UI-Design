import 'package:flutter/material.dart';
import 'package:uidesign/screens/responsive_design/widget/responsive/dimension_layout.dart';

class ResponsiveLayout extends StatelessWidget {
  final mobileBody;
  final destopBody;

  const ResponsiveLayout(
      {super.key, required this.mobileBody, required this.destopBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < mobileWidth) {
          return mobileBody;
        } else {
          return destopBody;
        }
      },
    );
  }
}
