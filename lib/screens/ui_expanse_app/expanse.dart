import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:uidesign/core/themes/app_themes.dart';
import 'package:uidesign/screens/ui_expanse_app/widget/balance.dart';

class ExpanseUi extends StatelessWidget {
  const ExpanseUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<SalesData> chartData = [
      SalesData(DateTime(2018), 500),
      SalesData(DateTime(2019), 350),
      SalesData(DateTime(2020), 400),
      SalesData(DateTime(2021), 280),
      SalesData(DateTime(2022), 430)
    ];
    return Scaffold(
        body: Stack(
          children: [
            // Background gradasi
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    kYellowSoftColor.withOpacity(0.2),
                    kPurpleColor.withOpacity(0.4),
                  ],
                ),
              ),
            ),
            // View Page
            SafeArea(
              child: Column(
                children: [
                  // View 1
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(),
                        Row(
                          children: [
                            Icon(
                              Icons.keyboard_arrow_down_outlined,
                              color: kPurpleColor,
                              size: 25,
                            ),
                            Text(
                              'October',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.notification_add,
                          color: kPurpleColor,
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 26,
                  ),
                  Text('Account Balance'),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '\$ 9400',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 27,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        BalanceInfo(isIncome: true, balance: 5000),
                        BalanceInfo(isIncome: false, balance: 1200),
                      ],
                    ),
                  ),
                  // View 2
                  SizedBox(
                    height: 23,
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Text(
                            'Spend Frequency',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: kBlackColor,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Container(
                            height: 200,
                            width: chartData.length * 100,
                            child: SfCartesianChart(
                              primaryXAxis: DateTimeAxis(),
                              series: <ChartSeries>[
                                // Renders line chart
                                SplineSeries<SalesData, DateTime>(
                                  color: kPurpleColor,
                                  width: 4,
                                  dataSource: chartData,
                                  xValueMapper: (SalesData sales, _) =>
                                      sales.year,
                                  yValueMapper: (SalesData sales, _) =>
                                      sales.sales,
                                ),
                                SplineSeries<SalesData, DateTime>(
                                    color: kRedColor,
                                    width: 2,
                                    dataSource: chartData,
                                    xValueMapper: (SalesData sales, _) =>
                                        sales.year,
                                    yValueMapper: (SalesData sales, _) => 300),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 10,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: kYellowSoftColor,
                              ),
                              child: Text(
                                'Today',
                                style: TextStyle(
                                  color: kBlackColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text(
                              'Week',
                              style: TextStyle(
                                color: kGrayColor,
                              ),
                            ),
                            Text(
                              'Month',
                              style: TextStyle(
                                color: kGrayColor,
                              ),
                            ),
                            Text(
                              'Years',
                              style: TextStyle(
                                color: kGrayColor,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Recent Transaction',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: kBlackColor,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 10,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: kPurpleSoftColor,
                                ),
                                child: Text(
                                  'See All',
                                  style: TextStyle(
                                    color: kPurpleColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ListView.separated(
                          separatorBuilder: (context, index) => SizedBox(
                            height: 15,
                          ),
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 10),
                                      height: 60,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Image.asset(
                                        'assets/images/shopping.png',
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Shopping',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  color: kBlackColor,
                                                ),
                                              ),
                                              Text(
                                                '-\$120',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  color: kRedColor,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Buy some grocery',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  color: kGrayColor,
                                                ),
                                              ),
                                              Text(
                                                '10.00 PM',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  color: kGrayColor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: ConvexAppBar(
          backgroundColor: kWhiteColor,
          color: kPurpleColor,
          activeColor: kPurpleColor,
          items: const [
            TabItem(icon: Icons.home, title: 'Home'),
            TabItem(icon: Icons.transform_outlined, title: 'Transaction'),
            TabItem(icon: Icons.add, title: 'Add'),
            TabItem(icon: Icons.currency_bitcoin, title: 'Budget'),
            TabItem(icon: Icons.people, title: 'Profile'),
          ],
          initialActiveIndex: 0, //optional, default as 0
          onTap: (int i) => print('click index=$i'),
        ));
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final DateTime year;
  final double sales;
}
