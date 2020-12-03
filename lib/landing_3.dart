import 'package:demoapp/components/fractional_rubric_card.dart';
import 'package:demoapp/components/rubric_card.dart';
import 'package:demoapp/components/navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Landing3 extends StatelessWidget {
  static const spacing = 30.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Color(0xFFFFAD00),
        foregroundColor: Color(0xFF6E27BC),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            logo(),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: RubricCard(height: 125),
            ),
            SizedBox(height: 30),
            scrollAreaOne(),
            SizedBox(height: 30),
            scrollAreaTwo(),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: <Widget>[
                  Expanded(child: RubricCard(height: 260)),
                  SizedBox(width: spacing),
                  Expanded(child: RubricCard(height: 260)),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavBar(),
    );
  }

  Widget scrollAreaTwo() {
    return SizedBox(
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
    );
  }

  Widget scrollAreaOne() {
    return SizedBox(
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
    );
  }

  Widget logo() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: SvgPicture.asset(
        'assets/images/logo.svg',
        color: Colors.white,
        semanticsLabel: 'rubric logo',
        width: 120,
        alignment: Alignment.centerLeft,
      ),
    );
  }
}
