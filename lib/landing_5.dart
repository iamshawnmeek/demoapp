import 'package:demoapp/components/autopad_list_view.dart';
import 'package:flutter/material.dart';
import 'package:demoapp/components/fractional_rubric_card.dart';
import 'package:demoapp/components/rubric_card.dart';

class Landing5 extends StatelessWidget {
  static const spacing = 30.0;
  static const spacing2 = 90.0;

  @override
  Widget build(BuildContext context) {
    return AutopadListView(
      children: <Widget>[
        SizedBox(height: spacing),
        Container(
          height: 150,
          width: 200,
          // Note: would like to find a way to break this line after quick
          child: Text(
            'Create a quick rubric',
            style: TextStyle(
              fontSize: 48,
              color: Colors.white,
              fontWeight: FontWeight.w900,
              height: 1.125,
              fontFamily: 'Avenir-Black',
            ),
          ),
        ),
        SizedBox(height: spacing),
        Row(
          children: <Widget>[
            Expanded(
                child: RubricCard(
              height: 180,
              child: Center(
                child: Text(
                  '+',
                  style: TextStyle(
                    fontSize: 48,
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    height: 1.125,
                    fontFamily: 'Avenir-Black',
                  ),
                ),
              ),
            )),
            SizedBox(width: spacing),
            Expanded(child: RubricCard(height: 180)),
          ],
        ),
        SizedBox(height: 30),
        Row(
          children: <Widget>[
            Expanded(child: RubricCard(height: 180)),
            SizedBox(width: spacing),
            Expanded(child: RubricCard(height: 180)),
          ],
        ),
        SizedBox(height: spacing),
        // Note: I am unsure if this proper usage, as it is applied on all Landings, a better way to do?
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
