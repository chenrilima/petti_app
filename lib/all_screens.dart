// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petti_app/screens/home.dart';
import 'package:petti_app/screens/profile.dart';
import 'package:petti_app/screens/register_company.dart';
import 'package:petti_app/screens/register_professional.dart';
import 'package:petti_app/utils/appcolors.dart';

class AllScreens extends StatefulWidget {
  const AllScreens({Key? key}) : super(key: key);

  @override
  _AllScreensState createState() => _AllScreensState();
}

class _AllScreensState extends State<AllScreens> {
  int currentIndex = 0;
  String result = "";

  var pages = [Home(), RegisterProfessional(), RegisterCompany(), Profile()];

  final _appPageController = PageController();

  setBottomBarIndex(index) {
    setState(() {
      currentIndex = index;
    });
    _appPageController.animateToPage(index,
        duration: const Duration(milliseconds: 700), curve: Curves.ease);
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.white,
      body: PageView(
        scrollDirection: Axis.horizontal,
        onPageChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        controller: _appPageController,
        children: pages,
      ),
      bottomNavigationBar: SizedBox(
        width: size.width,
        height: 80.h,
        child: Stack(
          //overflow: Overflow.visible,
          children: [
            CustomPaint(
              size: Size(size.width, 80),
              painter: BNBCustomPainter(),
            ),
            Center(
              heightFactor: 0.6,
              child: FloatingActionButton(
                  backgroundColor: currentIndex == 0
                      ? AppColors.green
                      : AppColors.grey, // Analyze Button
                  elevation: 0.1,
                  onPressed: () {},
                  child: const Icon(Icons.search)),
            ),
            SizedBox(
              width: size.width,
              height: 80.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.home,
                      color:
                          currentIndex == 0 ? AppColors.green : AppColors.grey,
                    ),
                    onPressed: () {
                      setBottomBarIndex(0);
                    },
                    splashColor: Colors.white,
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.article,
                        color: currentIndex == 1
                            ? AppColors.green
                            : AppColors.grey,
                      ),
                      onPressed: () {
                        setBottomBarIndex(1);
                      }),
                  Container(
                    width: size.width * 0.20,
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.business,
                        color: currentIndex == 2
                            ? AppColors.green
                            : AppColors.grey,
                      ),
                      onPressed: () {
                        setBottomBarIndex(2);
                      }),
                  IconButton(
                      icon: Icon(
                        Icons.person,
                        color: currentIndex == 3
                            ? AppColors.green
                            : AppColors.grey,
                      ),
                      onPressed: () {
                        setBottomBarIndex(3);
                      }),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void _onTappedBar(int value) {
    setState(() {
      currentIndex = value;
    });
    _appPageController.jumpToPage(value);
  }
}

class BNBCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..color = AppColors.white
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, 20); // Start
    path.quadraticBezierTo(size.width * 0.20, 0, size.width * 0.35, 0);
    path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 20);
    path.arcToPoint(Offset(size.width * 0.60, 20),
        radius: const Radius.circular(20.0), clockwise: false);
    path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0);
    path.quadraticBezierTo(size.width * 0.80, 0, size.width, 20);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 20);
    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
