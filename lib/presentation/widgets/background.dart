// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:petti_app/presentation/theme/app_styles.dart';
import 'package:petti_app/presentation/theme/app_theme.dart';

class Background extends StatelessWidget {
  String title;
  Widget content;

  Background({Key? key, this.title = "", required this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double widscreen = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppTheme.colors.green,
      body: Container(
        color: AppTheme.colors.green,
        height: widscreen * 1,
        padding: const EdgeInsets.only(top: 50, left: 10, right: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: AppTheme.colors.white,
                        border: Border.all(
                          color: AppTheme.colors.white,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(90))),
                    child: Image.asset(
                      AppTheme.images.pawDog,
                      width: 50,
                      height: 50,
                    ),
                  ),
                  Center(
                    child: SizedBox(
                        width: 262,
                        child: Text(
                          title,
                          style: AppTheme.textStyles.styleText(
                            TypeFont.barlowBold,
                            AppTheme.colors.white,
                            24,
                            FontWeight.w400,
                          ),
                        )),
                  )
                ],
              ),
              Container(child: content)
            ],
          ),
        ),
      ),
    );
  }
}
