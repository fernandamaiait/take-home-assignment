import 'package:flutter/material.dart';
import 'package:take_home_assignment/design_system/theme_colors.dart';

import '../utils.dart';

class Navbar extends StatelessWidget {
  final String title;

  const Navbar(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isLargeScreen(context) ? 80 : 56,
      width: MediaQuery.of(context).size.width,
      color: Colors.red, // ThemeColors.neutralWhite,
      child: Text(title),
    );
  }
}
