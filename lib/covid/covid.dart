import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uidesign/core/themes/app_themes.dart';
import 'package:uidesign/covid/widget/info_card.dart';
import 'package:uidesign/covid/widget/line_report_chart.dart';
import 'package:uidesign/covid/widget/prevention_card.dart';

class CovidScreens extends StatelessWidget {
  const CovidScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: buildAppBar(),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 30,
            ),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: kGraySoftColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Wrap(
                runSpacing: 20,
                spacing: 20,
                children: [
                  InfoCard(
                    title: 'Confirem Cases',
                    iconColor: kBlueColor,
                    backColor: kPurpleSoftColor,
                    effectNum: 1064,
                    imageUrl: 'assets/icons/run.svg',
                  ),
                  InfoCard(
                    title: 'Total Deatch',
                    iconColor: kBlueColor,
                    backColor: kYellowSoftColor,
                    effectNum: 95,
                    imageUrl: 'assets/icons/run.svg',
                  ),
                  InfoCard(
                    title: 'Total Recoveres',
                    iconColor: kBlueColor,
                    backColor: kGraySoftColor,
                    effectNum: 1029,
                    imageUrl: 'assets/icons/run.svg',
                  ),
                  InfoCard(
                    title: 'New Cases',
                    iconColor: kBlueColor,
                    backColor: kGreenLightColor,
                    effectNum: 89,
                    imageUrl: 'assets/icons/run.svg',
                  ),
                ],
              ),
            ),
          ),

          //
          Container(
            margin: EdgeInsets.only(
              top: 30,
              bottom: 30,
            ),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: kGraySoftColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Prevention',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black12,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        PreventionCard(
                          imageUrl: 'assets/icons/hand_wash.svg',
                          title: 'Hand Wash',
                        ),
                        PreventionCard(
                          imageUrl: 'assets/icons/use_mask.svg',
                          title: 'Use Masks',
                        ),
                        PreventionCard(
                          imageUrl: 'assets/icons/clean_disinfect.svg',
                          title: 'Clean Disifenct',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Card Information
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: SizedBox(
              width: double.infinity,
              child: Stack(
                children: [
                  Container(
                    // left side padding 30%
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * .3,
                      top: 20,
                      right: 20,
                    ),
                    height: 140,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        colors: [
                          kPurpleColor,
                          kYellowSoftColor,
                        ],
                      ),
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: const [
                          TextSpan(
                            text: 'Information For Madical Help',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                          TextSpan(
                            text: ' if In an appear',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SvgPicture.asset(
                      'assets/icons/nurse.svg',
                      height: 120,
                      width: 120,
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: SvgPicture.asset(
                      'assets/icons/virus.svg',
                      color: kBlackColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kWhiteColor,
      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          'assets/icons/menu.svg',
          color: kBlueColor,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/icons/search.svg',
            color: kBlueColor,
          ),
        ),
      ],
    );
  }
}
