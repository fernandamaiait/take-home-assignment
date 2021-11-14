import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:take_home_assignment/design_system/theme_colors.dart';

import '../utils.dart' as utils;

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isLargeScreen = utils.isLargeScreen(context);
    return Container(
      padding: EdgeInsets.only(left: isLargeScreen ? 56 : 16),
      height: isLargeScreen ? 80 : 56,
      color: ThemeColors.neutralWhite,
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/logo.svg',
            width: isLargeScreen ? 100 : 75,
            height: isLargeScreen ? 32 : 24,
          ),
        ],
      ),
    );
  }
}
