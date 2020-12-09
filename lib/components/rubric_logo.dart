import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RubricLogo extends StatelessWidget {
  const RubricLogo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/images/logo.svg',
      color: Color(0xff8743D3),
      semanticsLabel: 'rubric logo',
      width: 120,
      alignment: Alignment.centerLeft,
    );
  }
}
