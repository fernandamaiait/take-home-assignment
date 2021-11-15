import 'package:flutter/material.dart';

bool isLargeScreen(BuildContext context) {
  return MediaQuery.of(context).size.width > 480;
}
