import 'package:demoapp/components/fractional_rubric_card.dart';
import 'package:demoapp/components/rubric_card.dart';
import 'package:demoapp/components/rubric_logo.dart';
import 'package:flutter/material.dart';

class Landing2 extends StatelessWidget {
  // static const spacing = 30.0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        RubricLogo(),
        SizedBox(height: 30),
        Row(
          children: [
            Expanded(
              child: RubricCard(height: 125),
            ),
            SizedBox(width: 30),
            Expanded(
              child: RubricCard(height: 125),
            ),
          ],
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
        RubricCard(height: 275),
      ],
    );
  }
}
