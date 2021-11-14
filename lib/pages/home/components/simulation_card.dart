import 'package:flutter/material.dart';
import 'package:take_home_assignment/design_system/components/cta.dart';
import 'package:take_home_assignment/design_system/components/custom_card.dart';
import 'package:take_home_assignment/design_system/utils.dart';
import 'package:take_home_assignment/pages/home/components/header.dart';
import 'package:take_home_assignment/pages/home/components/input_area.dart';
import 'package:take_home_assignment/pages/home/components/monthly_amount_info.dart';

class SimulationCard extends StatelessWidget {
  const SimulationCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Header(
            imagePath: 'assets/buy_a_house.svg',
            title: 'Buy a house',
            subtitle: 'Saving goal',
          ),
          SizedBox(height: isLargeScreen(context) ? 28 : 24),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InputArea(),
              SizedBox(height: 24),
              MonthlyAmountInfo(),
              SizedBox(height: 32),
              Cta(text: 'Confirm'),
            ],
          ),
        ],
      ),
    );
  }
}
