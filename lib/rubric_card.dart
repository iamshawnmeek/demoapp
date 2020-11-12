import 'package:flutter/material.dart';

class RubricCard extends StatelessWidget {
  const RubricCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xff8743D3),
      ),
    );
  }
}
