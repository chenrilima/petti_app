import 'package:flutter/material.dart';

import 'dart:ui';

abstract class AppColors {
  Color get black;
  Color get lightGreen;
  Color get grey;
  Color get buttonAddPartners;
  Color get white;
  Color get red;
  Color get transparent;
  Color get backgroundTextFormField;
  Color get backgroundTextFormFieldII;
  Color get textInTextFormField;
  Color get bottomNavigationBar;
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
  Color get buttonAddPartners => const Color(0xff5A5A5A);
  @override
  Color get white => const Color(0xffffffff);
  @override
  Color get red => const Color.fromARGB(255, 248, 12, 12);
  @override
  Color get transparent => const Color(0x00000000);
  @override
  Color get backgroundTextFormField => const Color(0xffE4E4E4);
  @override
  Color get backgroundTextFormFieldII => const Color(0xff272727);
  @override
  Color get textInTextFormField => const Color(0xff666666);
  @override
  Color get bottomNavigationBar => const Color(0xff090909);

  @override
  Color get green => const Color.fromARGB(255, 9, 9, 9);
}
