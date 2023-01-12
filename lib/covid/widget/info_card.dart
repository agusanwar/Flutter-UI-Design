import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uidesign/core/themes/app_themes.dart';
import 'package:uidesign/covid/widget/line_report_chart.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final int effectNum;
  final String imageUrl;
  final Color iconColor;
  final Color backColor;
  const InfoCard({
    Key? key,
    required this.title,
    required this.effectNum,
    required this.imageUrl,
    required this.iconColor,
    required this.backColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          // untuk memaksimalkan width pada screens
          width: constraints.maxWidth / 2 - 10,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: kWhiteColor,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: backColor,
                      ),
                      child: SvgPicture.asset(
                        imageUrl,
                        color: iconColor,
                        width: 15,
                        height: 15,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      title,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          color: kBlackColor,
                        ),
                        children: [
                          TextSpan(
                            text: "$effectNum \n",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                          ),
                          TextSpan(
                            text: "People",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: LineReportChart(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
