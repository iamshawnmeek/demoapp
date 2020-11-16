// import 'package:demoapp/landing_layout2.dart';
import 'package:flutter/material.dart';
import 'package:demoapp/landing.dart';
// import 'package:demoapp/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xff6E27BC),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Color(0xff6E27BC),
      ),
      home: Landing(),
    );
  }
}
