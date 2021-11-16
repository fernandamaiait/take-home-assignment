import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:take_home_assignment/design_system/components/input.dart';
import 'package:take_home_assignment/pages/home/home.dart';

import '../../test_utils/material_app.dart';

void main() {
  testWidgets('Testing total amount input', (WidgetTester tester) async {
    await tester.pumpWidget(materialApp(Home()));
    final Finder finalAmountInput = find.byType(Input);
    expect(finalAmountInput, findsOneWidget);

    final Finder infoBox = find.byKey(ValueKey('monthly_amount_info_text'));
    expect(infoBox, findsOneWidget);

    await tester.enterText(finalAmountInput, '1000000');
    await tester.pump();

    final infoBoxText = infoBox.evaluate().single.widget as RichText;
    expect(infoBoxText.text.toPlainText(), contains('\$10,000.00'));

    final Finder calendarRightChevron =
        find.byKey(ValueKey('calendar_chevron_right'));
    expect(calendarRightChevron, findsOneWidget);

    final Finder monthlyAmountText =
        find.byKey(ValueKey('monthly_amount_text'));
    expect(monthlyAmountText, findsOneWidget);

    await tester.tap(calendarRightChevron);
    await tester.pump();

    expect(infoBoxText.text.toPlainText(), contains('2'));
    expect((monthlyAmountText.evaluate().single.widget as Text).data,
        contains('\$5,000.00'));
  });
}
