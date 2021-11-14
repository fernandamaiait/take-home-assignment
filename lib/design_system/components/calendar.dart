import 'package:flutter/material.dart';

import '../theme_colors.dart';
import '../typography.dart';

class Calendar extends StatelessWidget {
  final String label;
  const Calendar({
    required this.label,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          this.label,
          style: ThemeTypography.description(context),
        ),
        SizedBox(height: 4),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          height: 56,
          decoration: BoxDecoration(
            border: Border.all(color: ThemeColors.blueGray50),
            borderRadius: BorderRadius.all(Radius.circular(4.0)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.chevron_left,
                color: ThemeColors.blueGray300,
              ),
              Column(
                children: [
                  Text(
                    'October',
                    style: ThemeTypography.paragraph(
                      context,
                      fontWeight: FontWeight.w600,
                      color: ThemeColors.blueGray900,
                    ),
                  ),
                  Text(
                    '2021',
                    style: ThemeTypography.paragraph(
                      context,
                    ),
                  ),
                ],
              ),
              Icon(
                Icons.chevron_right,
                color: ThemeColors.blueGray300,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
