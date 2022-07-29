import 'package:flutter/material.dart';

getHeight(context) => MediaQuery.of(context).size.height;
getWidth(context) => MediaQuery.of(context).size.width;

class Constant {
  static const Color fontColor = Color(0xff319795);
  static const List<Color> gredientColor = [
    Color(0xff319795),
    Color(0xff3182CE)
  ];
  static const List<Color> heroColor = [
    Color(0xffE9F6FD),
    Color(0xffE7FEFB),
  ];
  static const List<Color> sectionColor = [
    Color(0xffE6FFFA),
    Color(0xffEBF4FF),
  ];
  static const Color activeTabColor = Color(0xff81E6D9);

  static const Color textColor = Color(0xff2D3748);
  static const Color widgetTextColor = Color(0xff4A5568);
  static const Color numberTextColor = Color(0xff718096);
}
