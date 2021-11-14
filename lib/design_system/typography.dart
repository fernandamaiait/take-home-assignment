import 'package:flutter/material.dart';
import 'package:take_home_assignment/design_system/colors.dart';

class Typography {
  static TextStyle headingMedium(
    BuildContext context, {
    FontWeight? fontWeight,
    Color? color,
  }) {
    final bool useLargeFonts = MediaQuery.of(context).size.width > 480;
    return TextStyle(
      fontFamily: FontFamily.rubik,
      fontSize: useLargeFonts ? 32 : 24,
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
    final bool useLargeFonts = MediaQuery.of(context).size.width > 480;
    return TextStyle(
      fontFamily: FontFamily.rubik,
      fontSize: useLargeFonts ? 24 : 20,
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
    final bool useLargeFonts = MediaQuery.of(context).size.width > 480;

    return TextStyle(
      fontFamily: FontFamily.workSans,
      fontSize: useLargeFonts ? 20 : 18,
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
    final bool useLargeFonts = MediaQuery.of(context).size.width > 480;

    return TextStyle(
      fontSize: useLargeFonts ? 16 : 14,
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
    final bool useLargeFonts = MediaQuery.of(context).size.width > 480;
    return TextStyle(
      fontFamily: FontFamily.workSans,
      fontSize: useLargeFonts ? 14 : 12,
      height: 1.5,
      fontWeight: fontWeight ?? FontWeight.normal,
      color: color ?? ThemeColors.blueGray400,
    );
  }

  static TextStyle caption({
    FontWeight? fontWeight,
    Color? color,
  }) {
    return TextStyle(
      fontFamily: FontFamily.workSans,
      fontSize: 12,
      height: 1.33,
      fontWeight: fontWeight ?? FontWeight.normal,
      color: color ?? ThemeColors.blueGray900,
    );
  }
}

class FontFamily {
  static String get rubik => 'Rubik';
  static String get workSans => 'Work Sans';
  static List<String> get list => [rubik, workSans];
}
