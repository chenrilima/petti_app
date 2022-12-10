import 'package:flutter/material.dart';

import 'dart:ui';

abstract class AppColors {
  Color get black;
  Color get lightGreen;
  Color get grey;
  Color get white;
  Color get red;
  Color get transparent;
  Color get green;
}

class AppColorsTheme implements AppColors {
  @override
  Color get lightGreen => const Color(0xff01f2f1);
  @override
  Color get black => const Color(0xff000000);
  @override
  Color get grey => const Color.fromARGB(255, 160, 159, 159);

  @override
  Color get white => const Color(0xffffffff);
  @override
  Color get red => const Color.fromARGB(255, 248, 12, 12);
  @override
  Color get transparent => const Color(0x00000000);

  @override
  Color get green => const Color(0xff40E0D0);
}
