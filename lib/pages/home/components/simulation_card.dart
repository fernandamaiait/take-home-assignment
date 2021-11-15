import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:take_home_assignment/design_system/components/cta.dart';
import 'package:take_home_assignment/design_system/components/custom_card.dart';
import 'package:take_home_assignment/design_system/utils.dart';
import 'package:take_home_assignment/pages/home/components/header.dart';
import 'package:take_home_assignment/pages/home/components/input_area.dart';
import 'package:take_home_assignment/pages/home/components/monthly_amount_info.dart';
import 'package:take_home_assignment/pages/home/store/home.store.dart';

class SimulationCard extends StatefulWidget {
  const SimulationCard({Key? key}) : super(key: key);

  @override
  _SimulationCardState createState() => _SimulationCardState();
}

class _SimulationCardState extends State<SimulationCard> {
  late HomeStore store;
  final finalDate = DateTime.now();

  @override
  void didChangeDependencies() {
    store = Provider.of<HomeStore>(context);
    super.didChangeDependencies();
  }

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
          Observer(
            builder: (_) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InputArea(finalDate: store.finalDate),
                  SizedBox(height: 24),
                  MonthlyAmountInfo(store: store),
                  SizedBox(height: 32),
                  Cta(text: 'Confirm'),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
