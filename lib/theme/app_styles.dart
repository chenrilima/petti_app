import 'package:flutter/material.dart';

enum TypeFont {
  barlowRegular,
  barlowSemiBold,
  barlowBold,
}

abstract class AppTextStyles {
  TextStyle styleText(
      TypeFont typeFont, Color color, double size, FontWeight fontWeight);
}

class AppTextStyleTheme implements AppTextStyles {
  @override
  TextStyle styleText(
    TypeFont typeFont,
    Color color,
    double size,
    FontWeight fontWeight,
  ) {
    switch (typeFont) {
      case TypeFont.barlowRegular:
        return TextStyle(
            fontFamily: 'Barlow-Regular',
            fontWeight: fontWeight,
            fontSize: size,
            color: color);

      case TypeFont.barlowSemiBold:
        return TextStyle(
            fontFamily: 'Barlow-SemiBold',
            fontWeight: fontWeight,
            fontSize: size,
            color: color);

      case TypeFont.barlowBold:
        return TextStyle(
            fontFamily: 'Barlow-Bold',
            fontWeight: fontWeight,
            fontSize: size,
            color: color);
    }
  }
}
