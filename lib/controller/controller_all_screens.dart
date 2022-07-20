import 'package:flutter/cupertino.dart';
import 'package:petti_app/screens/home.dart';
import 'package:petti_app/screens/profile.dart';
import 'package:petti_app/screens/register_company.dart';
import 'package:petti_app/screens/register_professional.dart';

class ControllerAllScreens {
  int currentIndex = 0;
  String result = "";

  var pages = [
    const Home(),
    const RegisterProfessional(),
    const RegisterCompany(),
    const Profile()
  ];

  final appPageController = PageController();
}
