import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petti_app/theme/app_theme.dart';

class Buttons extends StatelessWidget {
  Function onPressed;
  String? text;
  double? width;
  double? heigth;

  Buttons(
      {Key? key,
      required this.onPressed,
      this.text,
      this.width = 30,
      this.heigth = 15})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: AppTheme.colors.green, // background
          onPrimary: Colors.white, // foreground
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          padding: EdgeInsets.symmetric(horizontal: width!, vertical: heigth!),
          textStyle: GoogleFonts.roboto(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: AppTheme.colors.white,
          )),
      onPressed: onPressed(),
      child: Text(text!),
    );
  }
}
