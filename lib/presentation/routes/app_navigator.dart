import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum NavigationType {
  pushNamedAndRemoveUntil,
  pushNamed,
}

class AppNavigation {
  static navigateToNamed(
      BuildContext context, String routeName, NavigationType navigationType,
      {Object? arguments}) {
    if (navigationType == NavigationType.pushNamedAndRemoveUntil) {
      Navigator.of(context).pushNamedAndRemoveUntil(routeName, (route) => false,
          arguments: arguments);
    } else {
      Navigator.of(context).pushNamed(routeName, arguments: arguments);
    }
  }
}
