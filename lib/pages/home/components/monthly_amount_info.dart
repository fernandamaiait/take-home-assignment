import 'package:flutter/material.dart';
import 'package:take_home_assignment/design_system/theme_colors.dart';
import 'package:take_home_assignment/design_system/typography.dart';
import 'package:take_home_assignment/design_system/utils.dart';

class MonthlyAmountInfo extends StatelessWidget {
  const MonthlyAmountInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isLargeScreen(context) ? 480 : 312,
      height: 155,
      // padding: EdgeInsets.symmetric(
      //     horizontal: isLargeScreen(context) ? 32 : 24, vertical: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
        border: Border.all(
          width: 1,
          color: ThemeColors.blueGray50,
        ),
      ),
      child: Column(
        children: [
          Flexible(
            flex: 1,
            child: Expanded(
              child: Container(
                width: double.infinity,
                child: Text('teste'),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Expanded(
              child: Container(
                width: double.infinity,
                // padding: EdgeInsets.symmetric(
                //   horizontal: 32,
                //   vertical: 24,
                // ),
                color: ThemeColors.blueGray10,
                child: Center(
                  child: Text(
                    'You’re planning 48 monthly deposits to reach your \$25,000 goal by October 2020.',
                    style: ThemeTypography.caption(),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      // child: Expanded(
      //   child: Row(
      //     // mainAxisSize: MainAxisSize.max,
      //     children: [
      //       Expanded(
      //         child: Column(
      //           //     mainAxisSize: MainAxisSize.max,
      //           children: [
      //             Expanded(
      //               child: Row(children: [
      //                 Expanded(
      //                   child: Container(
      //                     color: Colors.red,
      //                     child: Expanded(child: Text('teste')),
      //                   ),
      //                 ),
      //               ]),
      //             ),
      //             Expanded(
      //               child: Row(mainAxisSize: MainAxisSize.max, children: [
      //                 Expanded(
      //                   child: Container(
      //                     color: Colors.green,
      //                     child: Expanded(child: Text('teste')),
      //                   ),
      //                 ),
      //               ]),
      //             ),
      //           ],
      //         ),
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}
