import 'package:flutter/material.dart';

class Landing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Text('Hello world'),
      ),
    ); // 11.9.20: working w/ scaffold / body, SafeWidget introduced
  }
}
