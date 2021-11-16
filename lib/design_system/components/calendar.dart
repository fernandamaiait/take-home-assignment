import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../theme_colors.dart';
import '../typography.dart';

class Calendar extends StatelessWidget {
  final String label;
  final DateTime date;
  final Function incrementDate;
  final Function decrementDate;

  const Calendar({
    required this.label,
    required this.date,
    required this.incrementDate,
    required this.decrementDate,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nextMonth = DateFormat.yMMMM().format(new DateTime(
        DateTime.now().year, DateTime.now().month + 1, DateTime.now().day));
    final finalDate = DateFormat.yMMMM().format(date);
    final canDecrementDate = nextMonth != finalDate;

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Column(
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
                if (canDecrementDate)
                  Chevron(
                    onTap: decrementDate,
                    isRightChevron: false,
                  )
                else
                  Expanded(
                    child: Container(),
                  ),
                Date(date: this.date),
                Chevron(
                  onTap: incrementDate,
                  key: ValueKey('calendar_chevron_right'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Chevron extends StatelessWidget {
  final Function onTap;
  final bool isRightChevron;

  const Chevron({
    required this.onTap,
    this.isRightChevron = true,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
          onTap();
        },
        child: Container(
          color: ThemeColors.neutralWhite,
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

class Date extends StatelessWidget {
  final DateTime date;

  const Date({
    required this.date,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final monthFormat = new DateFormat.MMMM();

    return Column(
      children: [
        Text(
          monthFormat.format(date),
          style: ThemeTypography.paragraph(
            context,
            fontWeight: FontWeight.w600,
            color: ThemeColors.blueGray900,
          ),
        ),
        Text(
          date.year.toString(),
          style: ThemeTypography.paragraph(
            context,
          ),
        ),
      ],
    );
  }
}
