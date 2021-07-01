import 'package:flutter/material.dart';
import 'package:tito_app/screens/screens.dart';

import 'config/palette.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tito',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Palette.nextBlue,
        primaryTextTheme: TextTheme(
          headline6: TextStyle(color: Colors.white),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Palette.scaffold,
      ),
      home: NavScreen(),
    );
  }
}
