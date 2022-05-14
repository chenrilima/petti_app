import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/appcolors.dart';

class Buttons extends StatelessWidget {
  Function onPressed;
  String? text;
  double? width;
  double? heigth;

  Buttons(
      {required this.onPressed, this.text, this.width = 30, this.heigth = 15});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: AppColors.green, // background
          onPrimary: Colors.white, // foreground
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          padding: EdgeInsets.symmetric(horizontal: width!, vertical: heigth!),
          textStyle: GoogleFonts.roboto(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: AppColors.white,
          )),
      onPressed: onPressed(),
      child: Text(text!),
    );
  }
}
