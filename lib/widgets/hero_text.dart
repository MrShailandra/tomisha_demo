import 'package:flutter/material.dart';
import 'package:tomisha_demo/utils/constant.dart';
import 'package:tomisha_demo/utils/text_size.dart';

class HeroText extends StatelessWidget {
  final bool? isDesktop;
  const HeroText({
    this.isDesktop,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Deine Job \nwebsite",
      textAlign: isDesktop == true ? TextAlign.start : TextAlign.center,
      style: TextStyle(
        fontSize: const AdaptiveTextSize()
            .getadaptiveTextSize(context, isDesktop == true ? 50 : 42),
        fontWeight: isDesktop == true ? FontWeight.bold : FontWeight.w400,
        color: Constant.textColor,
      ),
    );
  }
}
