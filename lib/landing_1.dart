import 'package:demoapp/rubric_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Landing1 extends StatelessWidget {
  static const spacing = 30.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Color(0xFFFFAD00),
        foregroundColor: Color(0xFF6E27BC),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: Padding(
          // mainAxisAlignment: MainAxisAlignment.start,
          // super dope, could also be .center to center up
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          padding: const EdgeInsets.all(spacing),
          child: ListView(
            children: <Widget>[
              SvgPicture.asset(
                'assets/images/logo.svg',
                color: Colors.white,
                semanticsLabel:
                    'rubric logo', // look into grid view, 11.11.20 //
                width: 120,
                alignment: Alignment.centerLeft,
              ),
              SizedBox(height: spacing),
              RubricCard(
                child: Text('textrubric'),
              ),
              SizedBox(height: spacing),
              Row(
                children: <Widget>[
                  Expanded(child: RubricCard()),
                  SizedBox(width: spacing),
                  Expanded(child: RubricCard()),
                ],
              ),
              SizedBox(height: spacing),
              RubricCard(),
            ],
          ),
        ),
      ),
    );
  }
}
