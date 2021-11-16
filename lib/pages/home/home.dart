import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:take_home_assignment/design_system/theme_colors.dart';
import 'package:take_home_assignment/design_system/components/navbar.dart';
import 'package:take_home_assignment/design_system/typography.dart';
import 'package:take_home_assignment/design_system/utils.dart';
import 'package:take_home_assignment/pages/home/components/simulation_card.dart';
import 'package:take_home_assignment/pages/home/store/home_store.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Provider<HomeStore>(
      create: (_) => HomeStore(),
      child: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: SafeArea(
          child: Scaffold(
            backgroundColor: ThemeColors.blueGray10,
            appBar: Navbar(),
            body: SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              child: Center(
                child: Column(
                  children: [
                    SizedBox(height: isLargeScreen(context) ? 48 : 32),
                    Column(
                      children: [
                        HomeTitle(),
                        SizedBox(
                          height: 24,
                          key: ValueKey('sizedbox'),
                        ),
                        SimulationCard(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class HomeTitle extends StatelessWidget {
  const HomeTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: 'Let\'s plan your ',
        style: ThemeTypography.subtitle(
          context,
          color: ThemeColors.brandColorPrimary,
        ),
        children: <TextSpan>[
          TextSpan(
              text: 'saving goal.',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              )),
        ],
      ),
    );
  }
}
