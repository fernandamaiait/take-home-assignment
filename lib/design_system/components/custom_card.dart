import 'package:flutter/material.dart';
import 'package:take_home_assignment/design_system/theme_colors.dart';

import '../utils.dart';

class CustomCard extends StatelessWidget {
  final Widget? child;
  const CustomCard({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 560,
        padding: isLargeScreen(context)
            ? EdgeInsets.fromLTRB(40, 35, 40, 40)
            : EdgeInsets.fromLTRB(24, 31, 24, 40),
        decoration: BoxDecoration(
          color: ThemeColors.neutralWhite,
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(30, 42, 50, 0.08),
              blurRadius: 32,
              offset: Offset(0, 16),
            )
          ],
        ),
        child: this.child);
  }
}
