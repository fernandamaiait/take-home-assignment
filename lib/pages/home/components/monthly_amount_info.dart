import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:take_home_assignment/design_system/theme_colors.dart';
import 'package:take_home_assignment/design_system/typography.dart';
import 'package:take_home_assignment/design_system/utils.dart';
import 'package:take_home_assignment/pages/home/store/home_store.dart';

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
          UpperContainer(store: store),
          LowerContainer(store: store),
        ],
      ),
    );
  }
}

class UpperContainer extends StatelessWidget {
  final HomeStore store;
  const UpperContainer({
    required this.store,
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
            Flexible(
              child: Text(
                'Monthly amount',
                overflow: TextOverflow.fade,
                style: ThemeTypography.subtitle(context),
              ),
            ),
            SizedBox(width: 4),
            Expanded(
              child: Observer(builder: (_) {
                return Text(
                  store.monthlyAmount,
                  style: ThemeTypography.headingMedium(context),
                  textAlign: TextAlign.right,
                  key: ValueKey('monthly_amount_text'),
                );
              }),
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
        child: Observer(builder: (_) {
          // var finalAmount = '0.00';
          // try {
          //   finalAmount = formatCurrencyWithouCents(store.finalAmount);
          // } catch (e) {
          //   print(e);
          // }
          return Center(
            child: RichText(
              textAlign:
                  isLargeScreen(context) ? TextAlign.left : TextAlign.center,
              text: TextSpan(
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
                        '${formatCurrency(store.finalAmount)} goal by ${store.formattedMonth} ${store.finalDate.year}.',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              key: ValueKey('monthly_amount_info_text'),
            ),
          );
        }),
      ),
    );
  }
}
