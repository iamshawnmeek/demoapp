import 'package:demoapp/rubric_card.dart';
import 'package:flutter/material.dart';

class FractionalRubricCard extends StatelessWidget {
  final double height;
  final double variableWidth;

  const FractionalRubricCard({
    Key key,
    @required this.height,
    @required this.variableWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widthFactor = MediaQuery.of(context).size.width * variableWidth;
    return SizedBox(
      width: widthFactor,
      child: RubricCard(height: height),
    );
  }
}
