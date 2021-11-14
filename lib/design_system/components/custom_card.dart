import 'package:flutter/material.dart';
import 'package:take_home_assignment/design_system/theme_colors.dart';

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
        padding: EdgeInsets.fromLTRB(40, 35, 40, 40),
        decoration: BoxDecoration(
          color: ThemeColors.neutralWhite,
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(
                80,
                30,
                42,
                50,
              ),
              blurRadius: 8,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: this.child);
  }
}
