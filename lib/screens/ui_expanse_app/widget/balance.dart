import 'package:flutter/material.dart';
import 'package:uidesign/core/themes/app_themes.dart';

class BalanceInfo extends StatelessWidget {
  const BalanceInfo({
    Key? key,
    required this.isIncome,
    required this.balance,
  }) : super(key: key);

  final bool isIncome;
  final int balance;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.44,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: isIncome == true ? kGreenColor : kRedColor,
      ),
      child: Row(
        children: [
          Image.asset(
            isIncome == true
                ? 'assets/images/income.png'
                : 'assets/images/exsanses.png',
            height: 40,
            width: 40,
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  isIncome == true ? "Income" : "Expanses",
                  style: TextStyle(
                    color: kWhiteColor,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 5,
                ),
                FittedBox(
                  child: Text(
                    "\$ $balance",
                    style: TextStyle(
                      fontSize: 20,
                      color: kWhiteColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
