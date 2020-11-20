import 'package:flutter/material.dart';

class RubricCard extends StatelessWidget {
  final Widget child;
  const RubricCard({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widthFactor = MediaQuery.of(context).size.width * .85;
    return Container(
      width: widthFactor,
      height: 230,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xff8743D3),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: child,
      ),
    );
  }
}
