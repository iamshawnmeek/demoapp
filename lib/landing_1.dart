import 'package:demoapp/components/autopad_list_view.dart';
import 'package:flutter/material.dart';

import 'package:demoapp/components/fractional_rubric_card.dart';
import 'package:demoapp/components/rubric_card.dart';
import 'package:demoapp/components/rubric_logo.dart';

class Landing1 extends StatelessWidget {
  static const spacing = 30.0;
  static const spacing2 = 90.0;

  @override
  Widget build(BuildContext context) {
    return AutopadListView(
      children: <Widget>[
        RubricLogo(),
        SizedBox(height: spacing2),
        Container(
          height: 150,
          child: Text(
            'Grading made simple',
            style: TextStyle(
              fontSize: 48,
              color: Colors.white,
              fontWeight: FontWeight.w900,
              height: 1.125,
              fontFamily: 'Avenir-Black',
            ),
          ),
        ),
        SizedBox(height: spacing2),
        Container(
          child: Text(
            'Your rubrics',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.w900,
              fontFamily: 'Avenir-Black',
            ),
          ),
        ),
        SizedBox(height: 12),
        scrollAreaOne(),
        SizedBox(height: spacing),
        RubricCard(height: 360),
        SizedBox(height: spacing),
      ],
    );
  }

  Widget scrollAreaOne() {
    return NoPad(
      child: SizedBox(
        height: 210,
        child: ListView(
          // able to scroll vert
          scrollDirection: Axis.horizontal,
          children: [
            SizedBox(width: 12),
            FractionalRubricCard(
              height: 210,
              variableWidth: .8,
            ),
            SizedBox(width: 30),
            FractionalRubricCard(
              height: 210,
              variableWidth: .8,
            ),
            SizedBox(width: 30),
            FractionalRubricCard(
              height: 210,
              variableWidth: .8,
            ),
            SizedBox(width: 30),
            FractionalRubricCard(
              height: 210,
              variableWidth: .8,
            ),
            SizedBox(width: 12),
          ],
        ),
      ),
    );
  }
}
