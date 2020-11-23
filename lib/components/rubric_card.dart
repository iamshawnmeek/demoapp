import 'package:flutter/material.dart';

class RubricCard extends StatelessWidget {
  final Widget child;
  final double height;
  const RubricCard({
    Key key,
    this.child,
    @required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
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
