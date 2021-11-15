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
          height: 56,
          decoration: BoxDecoration(
            border: Border.all(color: ThemeColors.blueGray50),
            borderRadius: BorderRadius.all(Radius.circular(4.0)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Chevron(
                isRightChevron: false,
              ),
              Period(),
              Chevron(),
            ],
          ),
        ),
      ],
    );
  }
}

class Chevron extends StatelessWidget {
  final bool isRightChevron;

  const Chevron({
    this.isRightChevron = true,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          isRightChevron ? print('right') : print('left');
        },
        child: Container(
          padding: isRightChevron
              ? EdgeInsets.only(right: 21)
              : EdgeInsets.only(left: 21),
          height: double.infinity,
          child: Align(
            alignment:
                isRightChevron ? Alignment.centerRight : Alignment.centerLeft,
            child: Icon(
              isRightChevron ? Icons.chevron_right : Icons.chevron_left,
              color: ThemeColors.blueGray300,
            ),
          ),
        ),
      ),
    );
  }
}

class Period extends StatelessWidget {
  const Period({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
