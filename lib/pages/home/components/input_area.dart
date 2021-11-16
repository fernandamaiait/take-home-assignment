import 'package:extended_masked_text/extended_masked_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:take_home_assignment/design_system/components/calendar.dart';

import 'package:take_home_assignment/design_system/components/input.dart';
import 'package:take_home_assignment/design_system/utils.dart';
import 'package:take_home_assignment/pages/home/store/home_store.dart';

class InputArea extends StatefulWidget {
  final DateTime finalDate;
  const InputArea({
    required this.finalDate,
    Key? key,
  }) : super(key: key);

  @override
  _InputAreaState createState() => _InputAreaState();
}

class _InputAreaState extends State<InputArea> {
  MoneyMaskedTextController? controller;
  late HomeStore store;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    store = Provider.of<HomeStore>(context);
  }

  @override
  void initState() {
    controller = MoneyMaskedTextController(
      decimalSeparator: '.',
      thousandSeparator: ',',
      initialValue: 0,
      precision: 2,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Flex(
        mainAxisSize: MainAxisSize.min,
        direction: isLargeScreen(context) ? Axis.horizontal : Axis.vertical,
        children: [
          Flexible(
            flex: 3,
            child: Input(
              label: 'Total amount',
              controller: controller,
              isCurrencyValue: true,
              onChanged: (_) {
                store.setFinalAmount(controller!.numberValue);
              },
            ),
          ),
          isLargeScreen(context) ? SizedBox(width: 16) : SizedBox(height: 16),
          Flexible(
            flex: 2,
            child: Calendar(
              label: 'Reach goal by ',
              date: widget.finalDate,
              incrementDate: store.incrementDate,
              decrementDate: store.decrementDate,
            ),
          ),
        ],
      ),
    );
  }
}
