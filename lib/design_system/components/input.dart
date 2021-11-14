import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:take_home_assignment/design_system/theme_colors.dart';
import 'package:take_home_assignment/design_system/typography.dart';

import '../utils.dart';

class Input extends StatefulWidget {
  final String label;

  Input({
    required this.label,
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
            decoration: InputDecoration(
              labelText: '',
              focusedBorder: border,
              enabledBorder: border,
            ),
          ),
        ),
      ],
    );
  }

  // } TextFormField(
  //       textCapitalization: TextCapitalization.sentences,
  //       initialValue: widget.initialValue,
  //       // autofocus: widget.autofocus ?? false,
  //       //   obscureText: widget.obscured ?? false,
  //       controller: widget.controller,
  //       validator: widget.validator,
  //       keyboardType: widget.keyboardType,
  //       // onSaved: widget.onSave,
  //       // maxLength: widget.maxLength,
  //       // focusNode: _inputFocusNode,
  //       // inputFormatters: widget.inputFormatters,
  //       // onChanged: widget.onChanged as void Function(String)?,
  //       // onTap: widget.onTapEvent ?? () {},
  //       // minLines: widget.minLines ?? 1,
  //       // maxLines: widget.maxLines ?? 1,
  //       // scrollPadding: widget.scrollPadding ?? const EdgeInsets.all(20.0),
  //       decoration: InputDecoration(
  //         // hintText: widget.hintText,
  //         // suffix: widget.suffix,
  //         errorMaxLines: 3,
  //         labelText: ' ${widget.label ?? ""} ',
  //         border: OutlineInputBorder(
  //           // borderSide: BorderSide(
  //           //   color: TokenColors.colorNeutralMedium,
  //           // ),
  //           borderRadius: const BorderRadius.all(
  //             Radius.circular(10),
  //           ),
  //         ),
  //         alignLabelWithHint: true,
  //         //labelStyle: _inputFocusNode!.hasFocus ? TokenFonts.t5 : TokenFonts.t6,
  //         // enabled: widget.enabled,
  //         // errorText: widget.errorText,
  //         // counterText: widget.counterText,
  //         // contentPadding: EdgeInsets.symmetric(
  //         //   horizontal: TokenPaddings.md,
  //         //   vertical: TokenPaddings.sm,
  //         // ),
  //       ),
  //     );
}
