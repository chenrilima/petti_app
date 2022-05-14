import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'all_screens.dart';
import 'utils/param.dart';

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
        home: AllScreens(),
      ),
    ),
  );
}
