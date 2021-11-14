import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:take_home_assignment/design_system/theme_colors.dart';
import 'package:take_home_assignment/design_system/utils.dart';

class ThemeTypography {
  static TextStyle headingMedium(
    BuildContext context, {
    FontWeight? fontWeight,
    Color? color,
  }) {
    return GoogleFonts.rubik(
      fontSize: isLargeScreen(context) ? 32 : 24,
      height: 1.2,
      fontWeight: fontWeight ?? FontWeight.w500,
      color: color ?? ThemeColors.brandColorSecondary,
    );
  }

  static TextStyle headingSmall(
    BuildContext context, {
    FontWeight? fontWeight,
    Color? color,
  }) {
    return GoogleFonts.rubik(
      fontSize: isLargeScreen(context) ? 24 : 20,
      height: 1.2,
      fontWeight: fontWeight ?? FontWeight.w500,
      color: color ?? ThemeColors.blueGray900,
    );
  }

  static TextStyle subtitle(
    BuildContext context, {
    FontWeight? fontWeight,
    Color? color,
  }) {
    return GoogleFonts.workSans(
      fontSize: isLargeScreen(context) ? 20 : 18,
      height: 1.2,
      fontWeight: fontWeight ?? FontWeight.normal,
      color: color ?? ThemeColors.blueGray900,
    );
  }

  static TextStyle paragraph(
    BuildContext context, {
    FontWeight? fontWeight,
    Color? color,
  }) {
    return GoogleFonts.workSans(
      fontSize: isLargeScreen(context) ? 16 : 14,
      height: 1.5,
      fontWeight: fontWeight ?? FontWeight.w400,
      color: color ?? ThemeColors.blueGray400,
    );
  }

  static TextStyle description(
    BuildContext context, {
    FontWeight? fontWeight,
    Color? color,
  }) {
    return GoogleFonts.workSans(
      fontSize: isLargeScreen(context) ? 14 : 12,
      height: 1.5,
      fontWeight: fontWeight ?? FontWeight.normal,
      color: color ?? ThemeColors.blueGray900,
    );
  }

  static TextStyle caption({
    FontWeight? fontWeight,
    Color? color,
  }) {
    return GoogleFonts.workSans(
      fontSize: 12,
      height: 1.33,
      fontWeight: fontWeight ?? FontWeight.w400,
      color: color ?? ThemeColors.blueGray900,
    );
  }
}
