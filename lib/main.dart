import 'package:flutter/material.dart';
import 'package:petti_app/presentation/routes/routes_names.dart';
import 'package:petti_app/utils/param.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider<Param>(
          create: (_) => Param(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "/allScreens",
        routes: RoutesName.routesName(),
      ),
    ),
  );
}
