import 'package:flutter/material.dart';
import 'package:petti_app/presentation/theme/app_theme.dart';

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
          textStyle: AppTheme.textStyles.styleText(
            TypeFont.barlowBold,
            AppTheme.colors.white,
            16,
            FontWeight.w400,
          )),
      onPressed: onPressed(),
      child: Text(text!),
    );
  }
}
