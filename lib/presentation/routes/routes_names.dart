import 'package:flutter/cupertino.dart';
import 'package:petti_app/all_screens.dart';

class RoutesName {
  static Map<String, Widget Function(BuildContext)> routesName() {
    return {
      "/allScreens": (context) => const AllScreens(),
    };
  }
}
