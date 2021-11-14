import 'package:extended_masked_text/extended_masked_text.dart';
import 'package:flutter/material.dart';
import 'package:take_home_assignment/design_system/components/currency_input.dart';
import 'package:take_home_assignment/design_system/components/input.dart';
import 'package:take_home_assignment/design_system/utils.dart';

class InputArea extends StatefulWidget {
  const InputArea({Key? key}) : super(key: key);

  @override
  _InputAreaState createState() => _InputAreaState();
}

class _InputAreaState extends State<InputArea> {
  MoneyMaskedTextController? controller;

  @override
  void initState() {
    controller = MoneyMaskedTextController(
      leftSymbol: '\$ ',
      decimalSeparator: '.',
      thousandSeparator: ',',
      initialValue: 0,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Input(
            label: 'Total amount',
          ),
          Text('teste'),
        ],
      ),
      // child: Flex(
      //   direction: isLargeScreen(context) ? Axis.horizontal : Axis.vertical,
      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   children: [
      //     TextFormField(),
      //     TextFormField(),
      //     // Column(
      //     //   children: [
      //     //     Text('Total amount'),
      //     // CurrencyInput(
      //     //   label: 'Total amount',
      //     //   controller: controller,
      //     // ),
      //     // Input(
      //     //   controller: controller,
      //     // ),
      //     // Text('teste1'),
      //     // Text('teste'),
      //     //   ],
      //     // ),
      //     // Column(
      //     //   children: [
      //     //     Text('Reach goal by'),
      //     //   ],
      //     // ),
      //   ],
      // ),
    );
  }
}
