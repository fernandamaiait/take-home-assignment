import 'package:flutter/material.dart';
import 'package:take_home_assignment/design_system/components/cta.dart';
import 'package:take_home_assignment/design_system/components/custom_card.dart';
import 'package:take_home_assignment/pages/home/components/header.dart';
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
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
