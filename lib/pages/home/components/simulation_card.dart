import 'package:flutter/material.dart';
import 'package:take_home_assignment/design_system/components/custom_card.dart';
import 'package:take_home_assignment/pages/home/components/header.dart';

class SimulationCard extends StatelessWidget {
  const SimulationCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Header(
        imagePath: 'assets/buy_a_house.svg',
        title: 'Buy a house',
        subtitle: 'Saving goal',
      ),
    );
  }
}
