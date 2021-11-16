import 'package:flutter/material.dart';
import 'package:take_home_assignment/design_system/theme_colors.dart';
import 'package:take_home_assignment/design_system/typography.dart';

class Input extends StatefulWidget {
  final String label;
  final controller;
  final void Function(String?) onChanged;

  final bool isCurrencyValue;

  Input({
    required this.label,
    required this.controller,
    required this.onChanged,
    this.isCurrencyValue = false,
    Key? key,
  }) : super(key: key);

  @override
  _InputState createState() => _InputState();
}

class _InputState extends State<Input> {
  late OutlineInputBorder border;

  @override
  void initState() {
    border = OutlineInputBorder(
      borderSide: BorderSide(color: Colors.transparent),
    );
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: ThemeTypography.description(context),
        ),
        SizedBox(height: 4),
        Container(
          height: 56,
          decoration: BoxDecoration(
            border: Border.all(color: ThemeColors.blueGray50),
            borderRadius: BorderRadius.all(Radius.circular(4.0)),
          ),
          child: TextFormField(
            //  keyboardType: TextInputType.number,
            keyboardType: widget.isCurrencyValue
                ? TextInputType.number
                : TextInputType.text,
            style: ThemeTypography.headingSmall(
              context,
              color: ThemeColors.blueGray600,
            ),
            controller: widget.controller,
            decoration: InputDecoration(
              labelText: '',
              focusedBorder: border,
              enabledBorder: border,
              prefix: widget.isCurrencyValue ? Text('\$ ') : Container(),
              prefixStyle: ThemeTypography.headingSmall(
                context,
                color: ThemeColors.blueGray100,
              ),
            ),
            onChanged: widget.onChanged,
          ),
        ),
      ],
    );
  }
}
