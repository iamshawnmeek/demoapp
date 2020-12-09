import 'package:demoapp/components/autopad_list_view.dart';
import 'package:demoapp/components/fractional_rubric_card.dart';
import 'package:demoapp/components/rubric_card.dart';
import 'package:demoapp/components/rubric_logo.dart';
import 'package:flutter/material.dart';

class Landing3 extends StatelessWidget {
  static const spacing = 30.0;
  @override
  Widget build(BuildContext context) {
    return AutopadListView(
      children: [
        RubricLogo(),
        SizedBox(height: 30),
        RubricCard(height: 125),
        SizedBox(height: 30),
        scrollAreaOne(),
        SizedBox(height: 30),
        scrollAreaTwo(),
        SizedBox(height: 30),
        Row(
          children: <Widget>[
            Expanded(child: RubricCard(height: 260)),
            SizedBox(width: spacing),
            Expanded(child: RubricCard(height: 260)),
          ],
        ),
        SizedBox(height: spacing),
      ],
    );
  }

  Widget scrollAreaTwo() {
    return NoPad(
      child: SizedBox(
        height: 125,
        child: ListView(
          // able to scroll vert
          scrollDirection: Axis.horizontal,
          children: [
            SizedBox(width: 12),
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
            SizedBox(width: 12),
          ],
        ),
      ),
    );
  }

  Widget scrollAreaOne() {
    return NoPad(
      child: SizedBox(
        height: 210,
        child: ListView(
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
