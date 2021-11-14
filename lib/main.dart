import 'package:flutter/material.dart';
import 'package:take_home_assignment/design_system/theme_colors.dart';
import 'package:take_home_assignment/pages/home/home.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Origin',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: ThemeColors.brandColorPrimary,
      ),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
