import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/appcolors.dart';

class Background extends StatelessWidget {
  String title;
  Widget content;

  Background({this.title = "", required this.content});

  @override
  Widget build(BuildContext context) {
    double widscreen = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        color: AppColors.green,
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
                        color: AppColors.white,
                        border: Border.all(
                          color: AppColors.white,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(90))),
                    child: Image.asset(
                      "images/pawdogicon.png",
                      width: 50,
                      height: 50,
                    ),
                  ),
                  Center(
                    child: SizedBox(
                        width: 262,
                        child: Text(
                          title,
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 24,
                            color: AppColors.white,
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
