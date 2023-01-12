import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PreventionCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  const PreventionCard({
    Key? key,
    required this.imageUrl,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          imageUrl,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.normal,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
