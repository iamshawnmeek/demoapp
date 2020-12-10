import 'package:demoapp/components/autopad_list_view.dart';
import 'package:demoapp/components/rubric_logo.dart';
import 'package:flutter/material.dart';

import 'components/rubric_card.dart';

class Landing4 extends StatelessWidget {
  static const spacing = 30.0;
  @override
  Widget build(BuildContext context) {
    return AutopadListView(
      children: [
        RubricLogo(),
        SizedBox(height: 30),
        RubricCard(height: 365),
        SizedBox(height: 30),
        Container(
          child: Text(
            'Recess games',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.w900,
              fontFamily: 'Avenir-Black',
            ),
          ),
        ),
        SizedBox(height: 12),
        Row(
          children: <Widget>[
            Expanded(child: RubricCard(height: 125)),
            SizedBox(width: spacing),
            Expanded(child: RubricCard(height: 125)),
          ],
        ),
        SizedBox(height: 30),
        RubricCard(height: 200),
        SizedBox(height: spacing),
      ],
    );
  }
}
