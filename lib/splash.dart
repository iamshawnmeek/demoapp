import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:button/button.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(
          'assets/images/logo.svg',
          color: Colors.white,
          semanticsLabel: 'rubric logo',
          width: 295,
          height: 89,
        ),
      ),
    );
  }
}
