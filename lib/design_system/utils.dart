import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

bool isLargeScreen(BuildContext context) {
  return MediaQuery.of(context).size.width > 480;
}

String formatCurrency(double? value) {
  return NumberFormat('\$#,##0.00').format(value);
}

String formatCurrencyWithouCents(double? value) {
  return NumberFormat('\$#,##0').format(value!.truncate());
}
