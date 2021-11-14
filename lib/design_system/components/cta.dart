import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:take_home_assignment/design_system/theme_colors.dart';

class Cta extends StatelessWidget {
  final String text;

  const Cta({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        fixedSize: Size(320, 56),
        padding: EdgeInsets.only(
          top: 18,
          bottom: 18,
        ),
        primary: ThemeColors.brandColorPrimary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
      ),
      child: Text(
        this.text,
        style: GoogleFonts.workSans(
          color: ThemeColors.neutralWhite,
          fontSize: 16,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w600,
          height: 1.25,
        ),
      ),
      onPressed: () {},
    );
  }
}
