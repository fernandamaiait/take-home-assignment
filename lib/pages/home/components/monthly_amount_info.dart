import 'package:flutter/material.dart';
import 'package:take_home_assignment/design_system/theme_colors.dart';
import 'package:take_home_assignment/design_system/typography.dart';
import 'package:take_home_assignment/design_system/utils.dart';

class MonthlyAmountInfo extends StatelessWidget {
  const MonthlyAmountInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isLargeScreen(context) ? 480 : 312,
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
          UpperContainer(),
          LowerContainer(),
        ],
      ),
    );
  }
}

class UpperContainer extends StatelessWidget {
  const UpperContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Expanded(
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
                '\$520.83',
                style: ThemeTypography.headingMedium(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LowerContainer extends StatelessWidget {
  const LowerContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Expanded(
        child: Container(
          width: double.infinity,
          color: ThemeColors.blueGray10,
          child: Center(
            child: Text(
              'You’re planning 48 monthly deposits to reach your \$25,000 goal by October 2020.',
              style: ThemeTypography.caption(),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
