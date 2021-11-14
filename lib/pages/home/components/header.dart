import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:take_home_assignment/design_system/typography.dart';

class Header extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;

  const Header({
    required this.imagePath,
    required this.title,
    required this.subtitle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(
          this.imagePath,
          width: 64,
          height: 64,
        ),
        SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: ThemeTypography.headingSmall(context),
            ),
            Text(
              subtitle,
              style: ThemeTypography.paragraph(context),
            ),
          ],
        ),
      ],
    );
  }
}
