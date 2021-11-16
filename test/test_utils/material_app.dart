import 'package:flutter/material.dart';
import 'package:take_home_assignment/design_system/theme_colors.dart';

Widget materialApp(Widget child) {
  return MaterialApp(
    title: 'Origin',
    theme: ThemeData(
      primarySwatch: Colors.blue,
      primaryColor: ThemeColors.brandColorPrimary,
    ),
    debugShowCheckedModeBanner: false,
    home: child,
  );
}
