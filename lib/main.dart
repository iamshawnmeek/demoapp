import 'package:flutter/material.dart';
import 'package:demoapp/splash.dart';
// import 'package:statusbar/statusbar.dart';

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
      home: MyHomePage(),
    );
  }
}

// status bar //

// class MyStatusBar extends StatefulWidget {
//   @override
//   _MyStatusBarState createState() => new _MyStatusBarState();
// }

// class _MyStatusBarState extends State<MyStatusBar> {
//   @override
//   void initState() {
//     super.initState();
//     StatusBar.color(Colors.white);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       home: Text(""),
//     );
//   }
// }
