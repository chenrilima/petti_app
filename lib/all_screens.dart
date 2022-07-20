// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:petti_app/controller/controller.dart';

import 'package:petti_app/theme/app_theme.dart';

class AllScreens extends StatefulWidget {
  const AllScreens({Key? key}) : super(key: key);

  @override
  _AllScreensState createState() => _AllScreensState();
}

class _AllScreensState extends State<AllScreens> {
  final Controller _controller = Controller();

  setBottomBarIndex(index) {
    setState(() {
      _controller.controllerAllScreens.currentIndex = index;
    });
    _controller.controllerAllScreens.appPageController.animateToPage(index,
        duration: const Duration(milliseconds: 700), curve: Curves.ease);
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppTheme.colors.white,
      body: PageView(
        scrollDirection: Axis.horizontal,
        onPageChanged: (index) {
          setState(() {
            _controller.controllerAllScreens.currentIndex = index;
          });
        },
        controller: _controller.controllerAllScreens.appPageController,
        children: _controller.controllerAllScreens.pages,
      ),
      bottomNavigationBar: SizedBox(
        width: size.width,
        height: 80,
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
                  backgroundColor:
                      _controller.controllerAllScreens.currentIndex == 0
                          ? AppTheme.colors.green
                          : AppTheme.colors.grey, // Analyze Button
                  elevation: 0.1,
                  onPressed: () {},
                  child: const Icon(Icons.search)),
            ),
            SizedBox(
              width: size.width,
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.home,
                      color: _controller.controllerAllScreens.currentIndex == 0
                          ? AppTheme.colors.green
                          : AppTheme.colors.grey,
                    ),
                    onPressed: () {
                      setBottomBarIndex(0);
                    },
                    splashColor: Colors.white,
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.article,
                        color:
                            _controller.controllerAllScreens.currentIndex == 1
                                ? AppTheme.colors.green
                                : AppTheme.colors.grey,
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
                        color:
                            _controller.controllerAllScreens.currentIndex == 2
                                ? AppTheme.colors.green
                                : AppTheme.colors.grey,
                      ),
                      onPressed: () {
                        setBottomBarIndex(2);
                      }),
                  IconButton(
                      icon: Icon(
                        Icons.person,
                        color:
                            _controller.controllerAllScreens.currentIndex == 3
                                ? AppTheme.colors.green
                                : AppTheme.colors.grey,
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
      _controller.controllerAllScreens.currentIndex = value;
    });
    _controller.controllerAllScreens.appPageController.jumpToPage(value);
  }
}

class BNBCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = AppTheme.colors.white
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
