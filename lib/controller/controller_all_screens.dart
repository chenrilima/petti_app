import 'package:flutter/cupertino.dart';
import 'package:petti_app/presentation/screens/home.dart';
import 'package:petti_app/presentation/screens/profile.dart';
import 'package:petti_app/presentation/screens/register_company.dart';
import 'package:petti_app/presentation/screens/register_professional.dart';

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
