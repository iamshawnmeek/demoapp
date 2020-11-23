import 'package:demoapp/components/fractional_rubric_card.dart';
import 'package:demoapp/components/rubric_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Landing3a extends StatelessWidget {
  static const spacing = 30.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Color(0xFFFFAD00),
        foregroundColor: Color(0xFF6E27BC),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListView(
            children: [
              SvgPicture.asset(
                'assets/images/logo.svg',
                color: Colors.white,
                semanticsLabel: 'rubric logo',
                width: 120,
                alignment: Alignment.centerLeft,
              ),
              SizedBox(height: 30),
              RubricCard(height: 125),
              SizedBox(height: 30),
              SizedBox(
                height: 270,
                child: ListView(
                  // able to scroll vert
                  scrollDirection: Axis.horizontal,
                  children: [
                    FractionalRubricCard(
                      height: 275,
                      variableWidth: .8,
                    ),
                    SizedBox(width: 30),
                    FractionalRubricCard(
                      height: 275,
                      variableWidth: .8,
                    ),
                    SizedBox(width: 30),
                    FractionalRubricCard(
                      height: 275,
                      variableWidth: .8,
                    ),
                    SizedBox(width: 30),
                    FractionalRubricCard(
                      height: 275,
                      variableWidth: .8,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                height: 125,
                child: ListView(
                  // able to scroll vert
                  scrollDirection: Axis.horizontal,
                  children: [
                    FractionalRubricCard(
                      height: 125,
                      variableWidth: .3,
                    ),
                    SizedBox(width: 30),
                    FractionalRubricCard(
                      height: 125,
                      variableWidth: .3,
                    ),
                    SizedBox(width: 30),
                    FractionalRubricCard(
                      height: 125,
                      variableWidth: .3,
                    ),
                    SizedBox(width: 30),
                    FractionalRubricCard(
                      height: 125,
                      variableWidth: .3,
                    ),
                    SizedBox(width: 30),
                    FractionalRubricCard(
                      height: 125,
                      variableWidth: .3,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: <Widget>[
                  Expanded(child: RubricCard(height: 260)),
                  SizedBox(width: spacing),
                  Expanded(child: RubricCard(height: 260)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
