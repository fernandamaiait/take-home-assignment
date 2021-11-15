import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:take_home_assignment/design_system/theme_colors.dart';
import 'package:take_home_assignment/design_system/typography.dart';
import 'package:take_home_assignment/design_system/utils.dart';
import 'package:take_home_assignment/pages/home/store/home.store.dart';

class MonthlyAmountInfo extends StatelessWidget {
  final HomeStore store;

  const MonthlyAmountInfo({
    required this.store,
    Key? key,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 155,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
        border: Border.all(
          width: 1,
          color: ThemeColors.blueGray50,
        ),
      ),
      child: Column(
        children: [
          UpperContainer(monthlyAmount: store.monthlyAmount),
          LowerContainer(store: store),
        ],
      ),
    );
  }
}

class UpperContainer extends StatelessWidget {
  final double monthlyAmount;
  const UpperContainer({
    required this.monthlyAmount,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          vertical: 0,
          horizontal: isLargeScreen(context) ? 32 : 24,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Monthly amount',
              style: ThemeTypography.subtitle(context),
            ),
            Text(
              '\$${monthlyAmount.toString()}',
              style: ThemeTypography.headingMedium(context),
            ),
          ],
        ),
      ),
    );
  }
}

class LowerContainer extends StatelessWidget {
  final HomeStore store;

  const LowerContainer({
    required this.store,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 31),
        width: double.infinity,
        color: ThemeColors.blueGray10,
        child: Center(
          child: Text.rich(
            TextSpan(
              text: 'You’re planning ',
              style: ThemeTypography.caption(),
              children: <TextSpan>[
                TextSpan(
                  text: '${store.totalMonths.toString()} monthly deposits ',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextSpan(
                  text: 'to reach your ',
                ),
                TextSpan(
                  text:
                      '\$${store.finalAmount.toString()} goal by ${store.formattedMonth} ${store.finalDate.year}.',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
