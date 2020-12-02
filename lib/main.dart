import 'package:demoapp/splash.dart';
// import 'package:demoapp/painter.dart';
import 'package:demoapp/landing_1.dart';
import 'package:demoapp/landing_2.dart';
import 'package:demoapp/landing_3.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark,
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'templogin': (_) => Landing1(),
        'dashboard': (_) => Landing1(),
        'rubrics': (_) => Landing2(),
        'favorites': (_) => Landing3(),
        'recess': (_) => Landing3(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xff6E27BC),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Color(0xff6E27BC),
      ),
      home: Splash(),
    );
  }
}
